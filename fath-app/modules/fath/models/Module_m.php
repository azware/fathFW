<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model Module
 * @created : 16 Mei 2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Module_m extends CI_Model {

  public $table = '';
  public $primary_key = '';

  public function __construct() {
    parent::__construct();
  }

  public function num_rows_select_module($paramFilter) {
    if ($paramFilter) {
      $this->db->like('module_nama', $paramFilter);
    }

    return $this->db->get('fath_module')->num_rows();
  }

  public function select_module($limit, $offset, $paramFilter) {
    if ($paramFilter) {
      $this->db->like('module_nama', $paramFilter);
    }

    $this->db->order_by('module_nama', 'ASC');
    $this->db->limit($limit, $offset);
    $rs = $this->db->get('fath_module')->result_array();
    if ($rs) {
      foreach ($rs as $idx => $obj) {
        $rs[$idx]['objController'] = $this->select_controller_by_moduleId($obj['module_id']);
      }
    }
    return $rs;
  }

  public function select_module_by_namaModule($namaModule) {
    $this->db->where('module_nama', $namaModule);
    $query = $this->db->get('fath_module');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function select_module_by_id($id) {
    $this->db->where('module_id', $id);
    $query = $this->db->get('fath_module');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function num_rows_select_controller($paramFilter) {
    $this->db->where('module_id', $paramFilter);
    return $this->db->get('fath_controller')->num_rows();
  }

  public function select_controller($limit, $offset, $paramFilter) {
    $this->db->where('module_id', $paramFilter);
    $this->db->order_by('controller_nama', 'ASC');
    $this->db->limit($limit, $offset);
    $rs = $this->db->get('fath_controller')->result_array();
    if ($rs) {
      foreach ($rs as $idx => $obj) {
        $rs[$idx]['objFunction'] = $this->select_function_by_controllerId($obj['controller_id']);
      }
    }
    return $rs;
  }

  public function select_controller_by_id($id) {
    $this->db->where('controller_id', $id);
    $query = $this->db->get('fath_controller');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function select_controller_by_namaController_moduleId($namaController, $moduleId) {
    $this->db->where('controller_nama', $namaController);
    $this->db->where('module_id', $moduleId);
    $query = $this->db->get('fath_controller');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function select_controller_by_moduleId($moduleId) {
    $this->db->where('module_id', $moduleId);
    return $this->db->get('fath_controller')->result_array();
  }

  public function num_rows_select_function($paramFilter) {
    $this->db->where('controller_id', $paramFilter);
    return $this->db->get('fath_module_detil')->num_rows();
  }

  public function select_function($limit, $offset, $paramFilter) {
    $this->db->where('controller_id', $paramFilter);
    $this->db->order_by('module_detil_function', 'ASC');
    $this->db->limit($limit, $offset);
    return $this->db->get('fath_module_detil')->result_array();
  }

  public function select_function_by_id($id) {
    $this->db->where('module_detil_id', $id);
    $query = $this->db->get('fath_module_detil');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function select_function_by_namaFunction_controllerId($namaFunction, $controllerId) {
    $this->db->where('module_detil_function', $namaFunction);
    $this->db->where('controller_id', $controllerId);
    $query = $this->db->get('fath_module_detil');
    $rs = array();
    if ($query->num_rows() > 0) {
      $rs = $query->row_array();
    }
    return $rs;
  }

  public function select_function_by_controllerId($controllerId) {
    $this->db->where('controller_id', $controllerId);
    return $this->db->get('fath_module_detil')->result_array();
  }

  public function insert_module($data) {
    return $this->db->insert('fath_module', $data);
  }

  public function insert_controller($data) {
    return $this->db->insert('fath_controller', $data);
  }

  public function insert_function($data) {
    return $this->db->insert('fath_module_detil', $data);
  }

  public function update_module($id, $data) {
    $this->db->where('module_id', $id);
    return $this->db->update('fath_module', $data);
  }

  public function update_controller($id, $data) {
    $this->db->where('controller_id', $id);
    return $this->db->update('fath_controller', $data);
  }

  public function update_function($id, $data) {
    $this->db->where('module_detil_id', $id);
    return $this->db->update('fath_module_detil', $data);
  }

  public function delete_module($id) {
    $this->db->where('module_id', $id);
    return $this->db->delete('fath_module');
  }

  public function delete_controller($id) {
    $this->db->where('controller_id', $id);
    return $this->db->delete('fath_controller');
  }

  public function delete_function($id) {
    $this->db->where('module_detil_id', $id);
    return $this->db->delete('fath_module_detil');
  }

}
