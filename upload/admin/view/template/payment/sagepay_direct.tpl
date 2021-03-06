<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-error"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="buttons"><a onclick="$('#form').submit();" class="btn"><i class="icon-ok"></i> <?php echo $button_save; ?></a> <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_vendor; ?></label>
          <div class="controls">
            <input type="text" name="sagepay_direct_vendor" value="<?php echo $sagepay_direct_vendor; ?>" />
            <?php if ($error_vendor) { ?>
            <span class="error"><?php echo $error_vendor; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_test; ?></label>
          <div class="controls">
            <select name="sagepay_direct_test">
              <?php if ($sagepay_direct_test == 'sim') { ?>
              <option value="sim" selected="selected"><?php echo $text_sim; ?></option>
              <?php } else { ?>
              <option value="sim"><?php echo $text_sim; ?></option>
              <?php } ?>
              <?php if ($sagepay_direct_test == 'test') { ?>
              <option value="test" selected="selected"><?php echo $text_test; ?></option>
              <?php } else { ?>
              <option value="test"><?php echo $text_test; ?></option>
              <?php } ?>
              <?php if ($sagepay_direct_test == 'live') { ?>
              <option value="live" selected="selected"><?php echo $text_live; ?></option>
              <?php } else { ?>
              <option value="live"><?php echo $text_live; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_transaction; ?></label>
          <div class="controls">
            <select name="sagepay_direct_transaction">
              <?php if ($sagepay_direct_transaction == 'PAYMENT') { ?>
              <option value="PAYMENT" selected="selected"><?php echo $text_payment; ?></option>
              <?php } else { ?>
              <option value="PAYMENT"><?php echo $text_payment; ?></option>
              <?php } ?>
              <?php if ($sagepay_direct_transaction == 'DEFERRED') { ?>
              <option value="DEFERRED" selected="selected"><?php echo $text_defered; ?></option>
              <?php } else { ?>
              <option value="DEFERRED"><?php echo $text_defered; ?></option>
              <?php } ?>
              <?php if ($sagepay_direct_transaction == 'AUTHENTICATE') { ?>
              <option value="AUTHENTICATE" selected="selected"><?php echo $text_authenticate; ?></option>
              <?php } else { ?>
              <option value="AUTHENTICATE"><?php echo $text_authenticate; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_total; ?></label>
          <div class="controls">
            <input type="text" name="sagepay_direct_total" value="<?php echo $sagepay_direct_total; ?>" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_order_status; ?></label>
          <div class="controls">
            <select name="sagepay_direct_order_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
              <?php if ($order_status['order_status_id'] == $sagepay_direct_order_status_id) { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_geo_zone; ?></label>
          <div class="controls">
            <select name="sagepay_direct_geo_zone_id">
              <option value="0"><?php echo $text_all_zones; ?></option>
              <?php foreach ($geo_zones as $geo_zone) { ?>
              <?php if ($geo_zone['geo_zone_id'] == $sagepay_direct_geo_zone_id) { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_status; ?></label>
          <div class="controls">
            <select name="sagepay_direct_status">
              <?php if ($sagepay_direct_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_sort_order; ?></label>
          <div class="controls">
            <input type="text" name="sagepay_direct_sort_order" value="<?php echo $sagepay_direct_sort_order; ?>" size="1" />
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 