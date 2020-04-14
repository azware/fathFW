<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model change_password
 * @created on : 12-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Change_password_m extends CI_Model {

  public $table = '';
  public $primary_key = '';

  public function __construct() {
    parent::__construct();
  }

  public function select_user_password_by_id($userId) {
    $this->db->select('user_password');
    $this->db->where('user_id', $userId);
    $this->db->from('fath_user');
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
      return $query->row();
    } else {
      return FALSE;
    }
  }

  function check_is_sso($user) {
    if ($this->db->get_where('fath_user', array('user_id' => $user))->row_array()['user_is_sso']) {
      return 1;
    }

    if (isset($this->session->userdata['phpCAS']['unauth_count'])) {
      if ($this->session->userdata['phpCAS']['unauth_count']) {
        return 1;
      }
    }

    return 0;
  }

  function update_change_password($data, $userId) {
    $this->db->where('user_id', $userId);
    return $this->db->update('fath_user', $data);
  }

}
