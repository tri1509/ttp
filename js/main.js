$(document).ready(function() {
    $('.sp-cn').hide();
    $(".sp-sn").click(function(){
        $(this).hide();
        $('.sp-cn').show();
        $("body").addClass("push-left");
    });
    $(".sp-cn").click(function(){
        $(this).hide();
        $('.sp-sn').show();
        $("body").removeClass("push-left");
    });
    /*--------------------------------------------*/
    $('#plus-btn').click(function(){
    	$('#qty_input').val(parseInt($('#qty_input').val()) + 1 );
    });
    $('#minus-btn').click(function(){
    	$('#qty_input').val(parseInt($('#qty_input').val()) - 1 );
    	if ($('#qty_input').val() == 0) {
			$('#qty_input').val(1);
		}
    });
    /*-----------------------------------------------*/
    var slpr = $(".slider-pr").lightSlider({
    	item:3,
        loop:true,
        auto:true,
        pause: 5000,
        controls: false,
        pager: false,
        responsive : [
            {
                breakpoint:767,
                settings: {
                    item:2,
                }
            },
            {
                breakpoint:480,
                settings: {
                    item:1,
                }
            }
        ]
    }); 
    $('.prev-pr').click(function(){
        slpr.goToPrevSlide(); 
    });
    $('.next-pr').click(function(){
        slpr.goToNextSlide(); 
    });
    /*--------------------------------------------*/
    $('#back-to-top').hide();
    $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
            $('#back-to-top').show();
        } else {
            $('#back-to-top').hide();
        }
    });
    $('#back-to-top').click(function () {
        $('#back-to-top').tooltip('hide');
        $('body,html').animate({
            scrollTop: 0
        }, 800);
        return false;
    });
    $('#back-to-top').tooltip('show');
});
function openNav() {
    document.getElementById("mySidenav").style.width = "280px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0px";
}

function togglePass() {
    var hide = document.getElementById("open");
    hide.classList.toggle("hide");
    var show = document.getElementById("close");
    show.classList.toggle("show");
    var x = document.getElementById("inputPassword");
    if (x.type === "password") {
    x.type = "text";
    } else {
        x.type = "password";
    }
}

function togglePass2() {
    var hide = document.getElementById("open2");
    hide.classList.toggle("hide");
    var show = document.getElementById("close2");
    show.classList.toggle("show");
    var x = document.getElementById("inputPassword2");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

$('#inputPassword, #inputPassword2').on('keyup', function () {
    if ($('#inputPassword').val() == $('#inputPassword2').val()) {
        $('#thongbao').html('<i class="fa-solid fa-check"></i>').css('color', 'green');
        $('#dangky').removeAttr('disabled');
        $('#restorepass').removeAttr('disabled');
    }else{
        $('#thongbao').html('<i class="fa-solid fa-xmark"></i>').css('color', 'red');
        $('#dangky').attr('disabled','disabled');
        $('#restorepass').attr('disabled','disabled');
    }
});
