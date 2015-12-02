<?php

require_once('api/Okay.php');

class CategoryStatsAdmin extends Okay {
    
    public $total_price;
    public $total_amount;
    
    public function fetch() {
        $filter = array();
        $this->total_price = 0;
        $this->total_amount = 0;
        
        $date_from = $this->request->get('date_from');
        $date_to = $this->request->get('date_to');
        
        if (!empty($date_from) || !empty($date_to)) {
            if (!empty($date_from)) {
                $filter['date_from'] = date("Y-m-d 00:00:01",strtotime($date_from));
                $this->design->assign('date_from', $date_from);
            }
            if (!empty($date_to)) {
                $filter['date_to'] = date("Y-m-d 23:59:00",strtotime($date_to));
                $this->design->assign('date_to', $date_to);
            }
        }
        
        $category_id = $this->request->get('category','integer');
        if (!empty($category_id)) {
            $category = $this->categories->get_category($category_id);
            $this->design->assign('category',$category);
            $filter['category_id'] = $category->children;
        }
        $brand_id = $this->request->get('brand','integer');
        if (!empty($brand_id)) {
            $filter['brand_id'] = $brand_id;
            $brand = $this->brands->get_brand($brand_id);
            $this->design->assign('brand',$brand);
        }
        
        $brands_filter = array();
        $categories = $this->categories->get_categories_tree();
        if (!empty($category)) {
            $brands_filter['category_id'] = $category->children;
        }
        $brands = $this->brands->get_brands($brands_filter);
        
        $purchases = $this->reportstat->get_categorized_stat($filter);
        if (!empty($category)) {
            $categories_list = $this->cat_tree(array($category),$purchases);
        } else {
            $categories_list = $this->cat_tree($categories,$purchases);
        }
        $this->design->assign('categories_list',$categories_list);
        $this->design->assign('categories',$categories);
        $this->design->assign('brands',$brands);
        $this->design->assign('total_price',$this->total_price);
        $this->design->assign('total_amount',$this->total_amount);
        
        return $this->design->fetch('category_stats.tpl');
    }
    
    private function cat_tree($categories,$purchases = array()) {
        foreach ($categories as $k=>$v) {
            if (isset($v->subcategories)) {
                $this->cat_tree($v->subcategories,$purchases);
            }
            $categories[$k]->price = floatval($purchases[$v->id]->price);
            $categories[$k]->amount = intval($purchases[$v->id]->amount);
            $this->total_price += floatval($purchases[$v->id]->price);
            $this->total_amount += intval($purchases[$v->id]->amount);
        }
        return $categories;
    }
}
