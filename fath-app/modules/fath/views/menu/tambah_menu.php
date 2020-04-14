<?php echo $this->breadcrump(); ?>
<form rel='ajax' action="<?php echo site_url('fath/menu/add_menu_proses'); ?>" class="panel form-horizontal xhr dest_subcontent-element" method="post">  
    <div class="panel-heading">
        <span class="panel-title">Tambah Menu</span>        
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Nama Menu</label>
                    <div class="col-sm-8">
                        <input type="text" name="namaMenu" class="form-control" placeholder="Nama Menu" value="<?php echo (isset($namaMenu) ? $namaMenu : '') ?>" autocomplete="off">
                        <?php echo form_error('namaMenu', '<p class="help-block" style="color:red;"><i>', '</i></p>'); ?>
                    </div>      
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Menu Induk</label>
                    <div class="col-sm-8">
                        <select class="form-control" name="menuIndukId">
                            <option value=""></option>
                            <?php
                            foreach ($listMenuInduk[1] as $idx => $objMenuInduk) {
                                if (isset($menuIndukId)) {
                                    if ($objMenuInduk['id'] == $menuIndukId) {
                                        echo "<option value='" . $objMenuInduk['id'] . "' selected='selected'>" . $objMenuInduk['nama'] . "</option>";
                                    } else {
                                        echo "<option value='" . $objMenuInduk['id'] . "'>" . $objMenuInduk['nama'] . "</option>";
                                    }
                                } else {
                                    echo "<option value='" . $objMenuInduk['id'] . "'>" . $objMenuInduk['nama'] . "</option>";
                                }

                                if (isset($listMenuInduk[2][$idx])) {
                                    foreach ($listMenuInduk[2][$idx] as $idx2 => $objMenuInduk2) {
                                        if (isset($menuIndukId)) {
                                            if ($objMenuInduk2['id'] == $menuIndukId) {
                                                echo "<option value='" . $objMenuInduk2['id'] . "' selected='selected'> - " . $objMenuInduk2['nama'] . "</option>";
                                            } else {
                                                echo "<option value='" . $objMenuInduk2['id'] . "'> - " . $objMenuInduk2['nama'] . "</option>";
                                            }
                                        } else {
                                            echo "<option value='" . $objMenuInduk2['id'] . "'> - " . $objMenuInduk2['nama'] . "</option>";
                                        }
                                    }
                                }
                            }
                            ?>                          
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Ikon Menu</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <input type="text" name="ikon" class="form-control" value="<?php echo (isset($ikon) ? $ikon : '') ?>" readonly><span class="input-group-addon"><i id="icon" class="fa <?php echo (isset($ikon) ? $ikon : '') ?>"></i></span>
                        </div>
                    </div>
                    <div class="col-sm-2">                        
                        <a rel="async" href="" ajaxify="<?php echo modal('Daftar Ikon', 'fath', 'ikon', 'view_ikon') ?>" class="btn btn-warning">Pilih Ikon</a>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Target Module</label>
                    <div class="col-sm-8">
                        <select class="form-control" name="moduleId">
                            <option value=""></option>                      
                            <?php
                            foreach ($listModule as $objModule) {
                                if (isset($moduleId)) {
                                    if ($objModule['module_id'] == $moduleId) {
                                        echo "<option value='" . $objModule['module_id'] . "' selected='selected'>" . $objModule['module_nama'] . "</option>";
                                    } else {
                                        echo "<option value='" . $objModule['module_id'] . "'>" . $objModule['module_nama'] . "</option>";
                                    }
                                } else {
                                    echo "<option value='" . $objModule['module_id'] . "'>" . $objModule['module_nama'] . "</option>";
                                }
                            }
                            ?>                          
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Target Controller</label>
                    <div class="col-sm-8">
                        <select class="form-control" name="controllerId">
                            <option value=""></option>
                            <?php
                            if (isset($listController)) {
                                foreach ($listController as $objController) {
                                    if (isset($controllerId)) {
                                        if ($objController['controller_id'] == $controllerId) {
                                            echo "<option value='" . $objController['controller_id'] . "' selected='selected'>" . $objController['controller_nama'] . "</option>";
                                        } else {
                                            echo "<option value='" . $objController['controller_id'] . "'>" . $objController['controller_nama'] . "</option>";
                                        }
                                    } else {
                                        echo "<option value='" . $objController['controller_id'] . "'>" . $objController['controller_nama'] . "</option>";
                                    }
                                }
                            }
                            ?>                                                 
                        </select>
                        <?php echo form_error('controllerId', '<p class="help-block" style="color:red;"><i>', '</i></p>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Target Fungsi</label>
                    <div class="col-sm-8">
                        <select class="form-control" name="functionId">
                            <option value=""></option>
                            <?php
                            if (isset($listFunction)) {
                                foreach ($listFunction as $objFunction) {
                                    if (isset($functionId)) {
                                        if ($objFunction['module_detil_id'] == $functionId) {
                                            echo "<option value='" . $objFunction['module_detil_id'] . "' selected='selected'>" . $objFunction['module_detil_function'] . "</option>";
                                        } else {
                                            echo "<option value='" . $objFunction['module_detil_id'] . "'>" . $objFunction['module_detil_function'] . "</option>";
                                        }
                                    } else {
                                        echo "<option value='" . $objFunction['module_detil_id'] . "'>" . $objFunction['module_detil_function'] . "</option>";
                                    }
                                }
                            }
                            ?>                                                 
                        </select>
                        <?php echo form_error('functionId', '<p class="help-block" style="color:red;"><i>', '</i></p>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Nama Label</label>
                    <div class="col-sm-8">
                        <input type="text" name="namaLabel" class="form-control" placeholder="Nama Label" value="<?php echo (isset($namaLabel) ? $namaLabel : '') ?>"autocomplete="off">
                    </div>      
                </div>

                <div class="row form-group">
                    <label class="col-sm-2 control-label" style="text-align:left;">Tipe Label</label>
                    <div class="col-sm-8">
                        <?php
                        if (isset($tipeLabel)) {
                            $valueLabel = $tipeLabel;
                        } else {
                            $valueLabel = "";
                        }
                        ?>
                        <div class="radio" style="margin-top: 0;">
                            <label>
                                <input type="radio" name="tipeLabel" value="default" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>                                
                                <span class="lbl"><i class="label label-default">Default</i></span>
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="tipeLabel" value="primary" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>                                
                                <span class="lbl"><i class="label label-primary">Primary</i></span>
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="tipeLabel" value="success" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>
                                <span class="lbl"><i class="label label-success">Success</i></span>
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="tipeLabel" value="warning" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>
                                <span class="lbl"><i class="label label-warning">Warning</i></span>
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="tipeLabel" value="danger" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>
                                <span class="lbl"><i class="label label-danger">Danger</i></span>
                            </label>
                        </div>
                        <div class="radio" style="margin-bottom: 0;">
                            <label>
                                <input type="radio" name="tipeLabel" value="info" class="px" <?php echo ($valueLabel == 'label-default' ? 'checked="checked"' : '') ?>>
                                <span class="lbl"><i class="label label-info">Info</i></span>
                            </label>
                        </div>
                        <?php echo form_error('tipeLabel', '<p class="help-block" style="color:red;"><i>', '</i></p>'); ?>
                    </div>                  
                </div>  
            </div>
        </div>
    </div>
    <div class="panel-footer text-right"> 
        <a href="<?php echo site_url('fath/menu'); ?>"><span class="btn btn-default">Kembali</span></a>
        <button id="btn-cari" class="btn btn-primary" value="">Simpan</button>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $("select[name='menuIndukId']").select2({
            allowClear: true,
            placeholder: "Menu Induk"
        });

        $("select[name='moduleId']").select2({
            allowClear: true,
            placeholder: "Target Module"
        });

        $("select[name='controllerId']").select2({
            allowClear: true,
            placeholder: "Target Controller"
        });

        $("select[name='functionId']").select2({
            allowClear: true,
            placeholder: "Target Fungsi [***diisi jika menu mengakses langsung ke fungsi***]"
        });

        $("select[name='moduleId']").change(function () {
            var moduleId = $("select[name='moduleId']").val();
            $.get("<?php echo site_url('fath/menu/get_controller_by_moduleId'); ?>" + '/' + moduleId,
                    function (data)
                    {
                        $("select[name='controllerId']").select2("val", "");
                        $("select[name='controllerId']").html(data);
                        $("select[name='functionId']").select2("val", "");
                        $("select[name='functionId']").html(data);
                    }
            );
        });

        $("select[name='controllerId']").change(function () {
            var controllerId = $("select[name='controllerId']").val();
            $.get("<?php echo site_url('fath/menu/get_function_by_controllerId'); ?>" + '/' + controllerId,
                    function (data)
                    {
                        $("select[name='functionId']").select2("val", "");
                        $("select[name='functionId']").html(data);
                    }
            );
        });

    });
</script>