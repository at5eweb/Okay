<?php

require_once('../../api/Okay.php');

class ExportAjax extends Okay {
    
    public $total_price;
    public $total_amount;
    
    private $columns_names = array(
        'name'=>             '���������',
        'amount'=>            '����������',
        'price'=>            '����'
        
    );
    
    private $column_delimiter = ';';
    private $stat_count = 10;
    private $export_files_dir = '../files/export/';
    private $filename = 'export_stat.csv';
    
    public function fetch() {
        // ������ ������ ������ 1251
        setlocale(LC_ALL, 'ru_RU.1251');
        $this->db->query('SET NAMES cp1251');
        
        // ��������, ������� ������������
        $page = $this->request->get('page');
        if (empty($page) || $page==1) {
            $page = 1;
            // ���� ������ ������� - ������ ������ ���� ��������
            if (is_writable($this->export_files_dir.$this->filename)) {
                unlink($this->export_files_dir.$this->filename);
            }
        }
        
        // ��������� ���� �������� �� ����������
        $f = fopen($this->export_files_dir.$this->filename, 'ab');
        
        // ���� ������ ������� - ������� � ������ ������ �������� �������
        if ($page == 1) {
            fputcsv($f, $this->columns_names, $this->column_delimiter);
        }
        
        $filter = array();
        $filter['page'] = $page;
        $this->total_price = 0;
        $this->total_amount = 0;
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
        
        $date_from = $this->request->get('date_from');
        $date_to = $this->request->get('date_to');
        
        if (!empty($date_from) || !empty($date_to)) {
            if (!empty($date_from)) {
                $filter['date_from'] = date("Y-m-d 00:00:01",strtotime($date_from));
            }
            if (!empty($date_to)) {
                $filter['date_to'] = date("Y-m-d 23:59:00",strtotime($date_to));
            }
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
        
        foreach ($categories_list as $c) {
            fputcsv($f, $c, $this->column_delimiter);
        }
        $total = array('name'=>'�����','amount'=>$this->total_amount,'price'=>$this->total_price);
        fputcsv($f, $total, $this->column_delimiter);
        fclose($f);
    }
    
    private function cat_tree($categories,$purchases = array(),&$result = array()) {
        foreach ($categories as $k=>$v) {
            $category = array();
            $path = array();
            foreach ($v->path as $p) {
                $path[] = str_replace($this->subcategory_delimiter, '\\'.$this->subcategory_delimiter, $p->name);
            }
            $category['name'] = implode('/', $path);
            $category['amount'] = intval($purchases[$v->id]->amount);
            $category['price'] = floatval($purchases[$v->id]->price);
            $result[] = $category;
            $this->total_price += floatval($purchases[$v->id]->price);
            $this->total_amount += intval($purchases[$v->id]->amount);
            if (isset($v->subcategories)) {
                array_merge($result,$this->cat_tree($v->subcategories,$purchases,$result));
            }
        }
        return $result;
    }
    
}

$export_ajax = new ExportAjax();
$json = json_encode($export_ajax->fetch());
header("Content-type: application/json; charset=utf-8");
header("Cache-Control: must-revalidate");
header("Pragma: no-cache");
header("Expires: -1");
print $json;
