<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class By_pass_csrf {

    public static function by_pass_csrf_module() {
        $byPassModule = array(
            '/service/'
        );

        foreach ($byPassModule as $module) {
            if (stripos($_SERVER['REQUEST_URI'], $module) !== false) {
                $CFG = & load_class('Config', 'core');
                $CFG->set_item('csrf_protection', FALSE);
            }
        }
    }

}
