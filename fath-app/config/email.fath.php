<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*
  |--------------------------------------------------------------------------
  | Email
  |--------------------------------------------------------------------------
 */

// $config['email']['protocol']	 = 'smtp';
// $config['email']['smtp_host']    = 'ssl://smtp.gmail.com';
// $config['email']['smtp_port']    = '465';
// $config['email']['smtp_timeout'] = '30';
// $config['email']['smtp_user']    = 'jmctestmail@gmail.com';
// $config['email']['smtp_pass']    = 'jogjamedicom';
// $config['email']['charset']      = 'utf-8';
// $config['email']['newline']      = "\r\n";
// $config['email']['mailtype']     = 'html';
// $config['email']['validation']   = TRUE; //
$config['email']['protocol'] = 'smtp';
$config['email']['smtp_host'] = 'smtp5.azware.id';
$config['email']['smtp_port'] = '25';
$config['email']['smtp_timeout'] = '30';
$config['email']['smtp_user'] = '';
$config['email']['smtp_pass'] = '';
$config['email']['charset'] = 'utf-8';
$config['email']['newline'] = "\r\n";
$config['email']['mailtype'] = 'html';
$config['email']['validation'] = TRUE;
