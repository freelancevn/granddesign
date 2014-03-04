<?php /* Smarty version 2.6.20, created on 2013-09-24 15:42:27
         compiled from common/footer.tpl */ ?>
 <!--footer-->
  <div id="footer" class="wrapper">
    <div class="container">
      <div class="container-inner">
        <div class="row">
          <div class="col-lg-6">
            <div class="row">
              <div class="col-lg-6">
                <h3>Văn phòng thiết kế tại TPHCM</h3>
              </div>
              <div class="col-lg-6 footer-info">
                <?php echo $this->_tpl_vars['arrConfigSite']['FOOTERHCM']; ?>

              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <h3>Văn phòng thiết kế tại Hà Nội</h3>
              </div>
              <div class="col-lg-6 footer-info">
                <?php echo $this->_tpl_vars['arrConfigSite']['FOOTERHANOI']; ?>

              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <p class="copyright">&copy; Copyright 2011, All right reserved</p>
            <div class="facebook">
				<div class="fb-like" data-href="https://www.facebook.com/www.granddesign.com.vn?ref=hl" data-width="450" data-show-faces="true" data-send="true"></div>
			</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="fb-root"></div>
 <?php echo '
 <script language="javascript">
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=279893302146504";
  fjs.parentNode.insertBefore(js, fjs);
}(document, \'script\', \'facebook-jssdk\'));
 </script>
 '; ?>

  <!--end footer--> 
</div>
</div>
</body>
</html>