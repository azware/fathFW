<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

$config['cas_server_url'] = 'https://azware.id/cas';
$config['cas_host'] = 'sso.azware.id';
$config['cas_port'] = 443;
$config['cas_context'] = '/cas/';
$config['cas_server_ca_cert_path'] = '';
$config['cas_disable_server_validation'] = TRUE;
$config['cas_debug'] = (ENVIRONMENT !== 'production');
$config['phpcas_path'] = realpath('../fath/fath-vendor/phpcas/CAS.php');
