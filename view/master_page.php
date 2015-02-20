<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="{$page_kw|default:$_var.page.keywords}" />
    <meta name="description" content="{$page_desc|default:$_var.page.description}" />
    <title><?php echo $_assign_vars['pageTitle']; ?></title>
    <link rel="StyleSheet" type="text/css" href="<?php echo $_assign_vars['pageStylesheetUrl']; ?>" />
</head>

<body class="skl_bg">
    <div class="wrapper">
        <div class="body_wrapper">
                <div class="install_header">
                    <div class="header_top_decor"></div>
                    <h1 class="welcome_text"><?php echo $_assign_vars['pageHeading']; ?></h1>
                </div>
                <div class="page_steps_wrap">
                    <div class="step_name"><?php echo $_assign_vars['pageTitle']; ?></div>
                    <?php echo $_assign_vars['pageSteps']; ?>
                    <div class="logo_container skl_logo"></div>
                    <div class="step_indicator"></div>
                </div>
                <div class="content">
                    <?php echo $_assign_vars['pageBody']; ?>
                </div>
        </div>
    </div>
</body>
</html>
