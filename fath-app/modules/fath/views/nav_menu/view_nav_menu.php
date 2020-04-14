<div id="main-menu-inner">
    <?php if ($this->user_auth_lib->is_login()): ?>
        <div class="menu-content top" id="menu-content-demo">
            <div>
                <div class="text-bg">
                    <span class="text-semibold"><?php echo $this->session->userdata('_fath__group_menu_nama_') ?></span>
                    <br /><i class="text-slim" id="user_tipe_nomor"><?php echo $this->session->userdata('_fath__user_tipe_nomor_'); ?></i>
                </div>
                <img src="<?php echo $user_image; ?>" alt="" class="">
                <div class="btn-group">
                    <a href="<?php echo site_url('fath/change_group/view_change_group'); ?>" class="btn btn-xs btn-primary btn-outline dark" title="Switch Group"><i class="fa fa-random"></i></a>
                    <a href="<?php echo site_url('portal/profile/view'); ?>" class="btn btn-xs btn-primary btn-outline dark" title="Profile"><i class="fa fa-user"></i></a>
                    <a href="<?php echo site_url('portal/user/data_akun'); ?>" class="btn btn-xs btn-primary btn-outline dark" title="Setting"><i class="fa fa-cog"></i></a>
                    <a href="<?php echo site_url('fath/signin/signout_proses'); ?>" class="btn btn-xs btn-danger btn-outline dark" title="Logout"><i class="fa fa-power-off"></i></a>
                </div>
                <a href="#">&nbsp;</a>
            </div>
        </div>
    <?php endif; ?>

    <ul class="navigation">
        <?php foreach ($menu as $key => $m): ?>
            <?php
            if (isset($menu[$key + 1]->parent_id)) {
                $tmp_parent = $menu[$key + 1]->parent_id;
                if ($menu[$key + 1]->parent_id === '0') {
                    $tmp_parent = 0;
                }
            } else {
                $tmp_parent = 0;
            }

            $tmp_sub = 0;
            $tmp_link = site_url($m->module . '/' . $m->controller . '/' . $m->function);
            $tmp_link_ = site_url($m->module . '/' . $m->controller);
            $tmp_li_class = 'child-nav-menu ';
            if ($m->aktif) {
                $tmp_li_class .= 'active';
            }

            if ($m->parent_id === '0' && $m->id === $tmp_parent) {
                $tmp_sub = 1;
                $tmp_link = '#';
                $tmp_link_ = '#';
                $tmp_li_class = 'mm-dropdown ';
                if ($m->open) {
                    $tmp_li_class .= 'open ';
                }
            } elseif ($m->parent_id === '0') {
                $tmp_sub = 1;
            } else {
                
            }
            ?>
            <?php if ($tmp_sub): ?>
                <?php if ($m->id === $tmp_parent): ?>
                    <li class="<?php echo $tmp_li_class; ?>">
                        <a href="<?php echo $tmp_link; ?>">
                            <i class="menu-icon fa <?php echo $m->css_clip; ?>"></i>
                            <span class="mm-text"><?php echo $m->menu; ?></span>
                        </a>                    
                        <ul>
                        <?php else: ?>   
                            <li class="<?php echo $tmp_li_class; ?>">
                                <a href="<?php echo $tmp_link; ?>" href_="<?php echo $tmp_link_; ?>" class="xhr dest_subcontent-element">
                                    <i class="menu-icon fa <?php echo $m->css_clip; ?>"></i>
                                    <span class="mm-text"><?php echo $m->menu; ?></span>
                                    <?php if ($m->label): ?>
                                        <span class="label <?php echo "$m->css_label" ?>"><?php echo $m->label ?></span>
                                    <?php endif; ?>
                                </a>
                            </li>
                        <?php endif; ?>
                    <?php else: ?>
                        <li class="child-nav-menu">
                            <a href="<?php echo $tmp_link; ?>" href_="<?php echo $tmp_link_; ?>" class="xhr dest_subcontent-element">
                                <i class="menu-icon fa <?php echo $m->css_clip; ?>"></i>
                                <span class="mm-text"><?php echo $m->menu; ?></span>
                                <?php if ($m->label): ?>
                                    <span class="label <?php echo "$m->css_label" ?>"><?php echo $m->label ?></span>
                                <?php endif; ?>
                            </a>
                        </li>
                        <?php if ($tmp_parent === 0): ?>
                        </ul>
                    </li>
                <?php endif; ?>
            <?php endif; ?>
        <?php endforeach; ?>
        <li class="child-nav-menu">
            <a href="<?php echo site_url('fath/change_group/view_change_group'); ?>" href_="<?php echo site_url('fath/change_group'); ?>" class="xhr dest_subcontent-element">
                <i class="menu-icon fa fa-random"></i>
                <span class="mm-text">Ganti Group</span>
            </a>
        </li>
        <li class="child-nav-menu">
            <a href="<?php echo site_url('fath/signin/signout_proses'); ?>">
                <i class="menu-icon fa fa-power-off"></i>
                <span class="mm-text">Logout</span>
            </a>
        </li>        
    </ul>
    <div class="menu-content">
        <a class="btn btn-primary btn-block btn-outline dark">
            <?php echo $this->config->item('version'); ?>
        </a>
    </div>
</div>
<script>
    $('li.child-nav-menu a').click(function (event) {
        menu_selected(this);
    });

    function menu_selected(object) {
        var url = typeof object !== 'undefined' ? object.getAttribute("href") : location.pathname;
        var split_url = url.split('/');
        var join_url = url;

        $('.mm-dropdown').removeClass("open");
        $('.child-nav-menu').removeClass("active");
        $('.mm-dropdown').removeClass("active");
        for (i = 0; i <= split_url.length; i++) {
            if (join_url !== "") {
                if ($('li.child-nav-menu a[href_$="' + join_url + '"]').length > 0) {
                    $('li.child-nav-menu a[href_$="' + join_url + '"]').parents('li.mm-dropdown').addClass('open');
                    $('li.child-nav-menu a[href_$="' + join_url + '"]').parents('li.mm-dropdown').addClass('active');
                    $('li.child-nav-menu a[href_$="' + join_url + '"]').parent().addClass('active');
                    return;
                } else if ($('li.child-nav-menu a[href$="' + join_url + '"]').length > 0) {
                    $('li.child-nav-menu a[href$="' + join_url + '"]').parents('li.mm-dropdown').addClass('open');
                    $('li.child-nav-menu a[href$="' + join_url + '"]').parents('li.mm-dropdown').addClass('active');
                    $('li.child-nav-menu a[href$="' + join_url + '"]').parent().addClass('active');
                    return;
                }
            }
            split_url = join_url.split('/');
            split_url.pop();
            join_url = split_url.join('/');
        }
    }
</script>