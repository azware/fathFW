<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Azware Dev. | Page Not Found</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

        <link rel="shortcut icon" href="../fath-assets/images/favicon.ico" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
        <link href="../fath-assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../fath-assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
        <link href="../fath-assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css">
        <link href="../fath-assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
        <link rel="shortcut icon" href="../fath-assets/images/favicon.ico" />
        <!--[if lt IE 9]>
                <script src="../fath-assets/javascripts/ie.min.js"></script>
        <![endif]-->
    </head>
    <body class="page-404">
        <div class="header">
            <strong class="logo">FATH Framework</strong>
        </div> 
        <div class="error-code" style="margin-top: 30px;"><img src="../fath-assets/images/notfound.jpg" width="40%"/></div>
        <div class="error-text" style="margin-top: 5px; font-size: 15px;">
            <b>Maaf</b>, Ada kesalahan halaman! Silahkan klik tombol Homepage.
        </div>
        <div class="search-form" style="margin: 20px 0 20px;">   
            <a href="<?php echo 'http://' . $_SERVER['HTTP_HOST'] . str_replace('fath-error/' . basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']); ?>">
                <button class="search-btn">Homepage</button>
            </a>    
        </div>
        <script type="text/javascript">
            if (typeof ($) !== 'undefined') {
                $(document).ready(function () {
                    $("#subcontent-element").html('<div class="page-header"><div class="row">\n\
                    <h1 class="col-xs-12 col-sm-12 text-center text-left-sm">\n\
                    <i class="fa fa-unlink" page-header-icon></i>&nbsp;Error Occured</h1>\n\
                    </div></div><div class="note note-danger"><b>Sorry</b>, We can\'t show your request yet, something went wrong, we will check it soon.</div>');
                    $(".modal-backdrop").remove();
                    $(".modal").remove();
                });
            }
        </script>
    </body>
</html>