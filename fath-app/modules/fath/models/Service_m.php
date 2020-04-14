<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model Service
 * @created : 16 Mei 2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Service_m extends CI_Model {
    
  public function __construct() {
    parent::__construct();
  }

  public function get_menu_by_id($id) {
    $this->db->select('b.module_detil_function, c.module_nama, d.controller_nama');
    $this->db->from('fath_menu a');
    $this->db->join('fath_module_detil b', 'a.module_detil_id = b.module_detil_id', 'left');
    $this->db->join('fath_module c', 'b.module_id = c.module_id', 'left');
    $this->db->join('fath_controller d', 'b.controller_id = d.controller_id', 'left');
    $this->db->where('a.menu_id', $id);
    
    return $this->db->get()->row_array();
  }

}
