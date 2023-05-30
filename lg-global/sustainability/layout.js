function initCommonHeader() {
    var cHeader = document.querySelector("#header.c-header");
    var chPosTop = cHeader.offsetTop - (document.documentElement.scrollTop || window.scrollY);
    var cFooterWrap = document.querySelector("#footer__wrap.c-footer__wrap");
    var cfwOffsetTop = cFooterWrap.offsetTop;
    var gnb = cHeader.querySelector(".c-header__gnb");
    var btnGnb = cHeader.querySelector(".c-header__btn-gnb");
    var btnGnbBar = btnGnb.querySelectorAll(".c-header__btn-gnb__bar");
    var deviceWidth;
    const siblings = (el) => {return [...el.parentNode.children].filter((child) => child !== el)}
    
    window.onresize = window.onorientationchange = function() {
        cfwOffsetTop = cFooterWrap.offsetTop;
        chPosTop = cHeader.offsetTop - (document.documentElement.scrollTop || window.scrollY)

        if(window.innerWidth <= 768) {
            deviceWidth = "mobile";
        } else if(window.innerWidth > 768) {
            gnb.removeAttribute("style");
            btnGnbBar.forEach(function(item) {
                item.className = item.className.replace("c-header__btn-gnb__bar c-header__btn-gnb__bar--close","c-header__btn-gnb__bar")
            })
            deviceWidth = "pc";
        }
    }

    window.onscroll = function() {
        var winScrollTop = document.documentElement.scrollTop || window.scrollY
        if(winScrollTop >= cfwOffsetTop - window.innerHeight) {
            cHeader.style.position = "absolute"
            cHeader.style.top = cfwOffsetTop - window.innerHeight + chPosTop + "px"
        } else if(winScrollTop < cfwOffsetTop - window.innerHeight) {
            cHeader.removeAttribute("style")
        }
    }

    btnGnb.onclick = function() {
        btnGnbBar.forEach(function(item) {
            if(item.className.indexOf("c-header__btn-gnb__bar--close") < 0) {
                item.className = item.className.replace("c-header__btn-gnb__bar","c-header__btn-gnb__bar c-header__btn-gnb__bar--close")
                gnb.style.display = "block"
                setTimeout(function() {
                    gnb.style.transform = "translateY(0vh)";
                } ,100)
            } else if(item.className.indexOf("c-header__btn-gnb__bar--close") >= 0) {
                item.className = item.className.replace("c-header__btn-gnb__bar c-header__btn-gnb__bar--close","c-header__btn-gnb__bar")
                gnb.style.transform = "translateY(100vh)";
                setTimeout(function() {
                    gnb.style.display = "none"
                },300)
            }
        })
    }
}


window.addEventListener('DOMContentLoaded', function() {
    initCommonHeader();
})