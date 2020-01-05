$(document).ready(function(){
  $('#gnav li ul,#animate').hide();
  $('#ultitle li').hover(
    function() {
       $(this).find('.a,#animate').slideDown('fast');		//下拉式選單
    },function() {
       $(this).find('.a,#animate').fadeOut('fast');
    });
});



jQuery(document).ready(function($) {   
$('#slider').cycle({   
          fx:    'fade',  //特效           speed:  7500,
          timeout:  3000,
          random:  1
         });
 });