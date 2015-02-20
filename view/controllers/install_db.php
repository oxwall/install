
<p style=" padding-top: 80px; color: #000; font-family: 'Trebuchet MS'; text-align: center; ">Please create a database and enter its details here. </p>

<?php echo install_tpl_feedback(); ?>

<form method="post">
    <table class="form">
        <tr>
            <td class="label">Host</td>
            <td class="value <?php echo install_tpl_feedback_flag('db_host'); ?>">
               <input type="text" name="db_host" value="<?php echo @$_assign_vars['data']['db_host']; ?>" />
            </td>
            <td class="description" style="width: 324px; height: 34px; font-family: 'Trebuchet MS'; color: #626262;" >MySQL host and port <br> (optionally). Example: <br> <i>localhost</i> or <i>localhost:3307</i></td>
        </tr>
        <tr>
            <td class="label">User</td>
            <td class="value <?php echo install_tpl_feedback_flag('db_user'); ?>">
               <input type="text" name="db_user" value="<?php echo @$_assign_vars['data']['db_user']; ?>" />
            </td>
            <td class="description"> </td>
        </tr>
        <tr>
            <td class="label">Password</td>
            <td class="value <?php echo install_tpl_feedback_flag('db_password'); ?>">
               <input type="text" name="db_password" value="<?php echo @$_assign_vars['data']['db_password']; ?>" />
            </td>
            <td class="description"> </td>
        </tr>
        
        <tr>
            <td class="label">Database Name</td>
            <td class="value <?php echo install_tpl_feedback_flag('db_name'); ?>">
               <input type="text" name="db_name" value="<?php echo @$_assign_vars['data']['db_name']; ?>" />
            </td>
            <td class="description"> </td>
        </tr>
        
        <tr>
            <td class="label">Table prefix</td>
            <td class="value <?php echo install_tpl_feedback_flag('db_prefix'); ?>">
               <input type="text" name="db_prefix" value="<?php echo @$_assign_vars['data']['db_prefix']; ?>" />
            </td>
            <td class="description"> </td>
        </tr>
    </table>

    <p align="center"><input type="submit" value="Continue" style=" margin-bottom: 40px; font-size: 15px; text-transform: uppercase; text-align: center; font-weight: bold; font-family: 'Trebuchet MS'; color: #626262;" /></p>

</form>