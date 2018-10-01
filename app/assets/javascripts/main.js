$(function() {
    var flg = "default";
    $('#footer-button').click(function(){
        $('.footer').toggle();
        if(flg == "default"){
          $(this).text("閉じる");
          flg = "changed";
        }else{
          $(this).text("条件、プライバシー、通貨など");
          flg = "default";
        }
    });
});
