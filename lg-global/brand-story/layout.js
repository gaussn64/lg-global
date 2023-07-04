function getElementIndex(element) {
    return [].indexOf.call(element.parentNode.children, element);
}


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
            cHeader.removeAttribute("style")
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
                    gnb.removeAttribute("style")
                },300)
            }
        })
    }
}

function initGnbDeps2(tAnchor) {
    var tAnchor = tAnchor;
    var tItem = tAnchor.parentNode;
    var tList = tItem.parentNode;
    var gdItem = tList.getElementsByTagName("li");
    var gOrgIndex = getElementIndex(document.querySelector(".c-header__gnb__list__item__anchor--active").parentNode);
    var tDeps2 = tItem.querySelector(".c-header__gnb__list__item__deps2");
    var tDeps2Menu = tDeps2.querySelector(".c-header__gnb__list__item__deps2__menu");
    var tDeps2MenuItem = tDeps2Menu.querySelectorAll(".c-header__gnb__list__item__deps2__menu__item");
    var tDeps2MenuItemOrgIndex = getElementIndex(document.querySelector(".c-header__gnb__list__item__deps2__menu__item__anchor--active").parentNode);
    var tDeps2Visual = tDeps2.querySelector(".c-header__gnb__list__item__deps2__visual");
    var tDeps2VisualItem = tDeps2Visual.querySelectorAll(".c-header__gnb__list__item__deps2__visual__item");
        tDeps2VisualItem[tDeps2MenuItemOrgIndex].classList.add("c-header__gnb__list__item__deps2__visual__item--active");
    var tDeps2MenuBtnBack = tDeps2.querySelector(".c-header__gnb__list__item__deps2__btn-back")
    var gnbDeps2Bg = document.querySelector(".gnb__deps2__bg");
    var deviceMode = function() {
        if(window.innerWidth > 768) {
            return "pc"
        } else if(window.innerWidth <= 768) {
            return "mo"
        }
    }

    function resizeDeps2Menu() {
        if(deviceMode() == "pc") {
            tList.style.display = "flex"
            tDeps2.style.width = document.querySelector("body").offsetWidth - 60 + "px"

            if(tAnchor.className.indexOf("--on") > -1) {
                for (var w = 0; w < gdItem.length; w++) {
                    if(gdItem[w].className.indexOf("deps2") > -1) continue;
                    gdItem[w].removeAttribute("style")
                }
                tItem.removeAttribute("style")
                tItem.removeAttribute("style")
                tAnchor.removeAttribute("style")
                gnbDeps2Bg.style.display = "block"
                tDeps2MenuBtnBack.removeAttribute("style")
            }
        } else if(deviceMode() == "mo") {
            tList.style.display = "block"
            tDeps2.style.width = "auto"

            if(tAnchor.className.indexOf("--on") > -1) {
                for (var x = 0; x < gdItem.length; x++) {
                    if(gdItem[x].className.indexOf("deps2") > -1) continue;
                    gdItem[x].style.display = "none"
                }
                tItem.style.display = "block"
                tItem.style.marginTop = "0px"
                tAnchor.style.display = "none"
                gnbDeps2Bg.removeAttribute("style")
                setTimeout(function() {
                    tDeps2MenuBtnBack.style.opacity = 1
                },300)
            }
        }
    }
    resizeDeps2Menu()
    window.onload = window.onresize = window.onorientationchange = function() {
        resizeDeps2Menu()
    }

    if(tAnchor.className.indexOf("--active") < 0) {
        tList.querySelectorAll(".c-header__gnb__list__item").forEach(function(restItem) {
            restItem.querySelector("a").classList.remove("c-header__gnb__list__item__anchor--active")
        })
        tAnchor.classList.add("c-header__gnb__list__item__anchor--active")
    }

    if(tAnchor.className.indexOf("--on") < 0) {
        tList.querySelectorAll(".c-header__gnb__list__item").forEach(function(restItem) {
            restItem.querySelector("a").classList.remove("c-header__gnb__list__item__anchor--on")
        })
        tAnchor.classList.add("c-header__gnb__list__item__anchor--on")

        if(deviceMode() == "pc") {
            gnbDeps2Bg.style.display = "block"
        } else if(deviceMode() == "mo") {
            for (var y = 0; y < gdItem.length; y++) {
                if(gdItem[y].className.indexOf("deps2") > -1) continue;
                gdItem[y].style.display = "none"
            }
            tItem.style.display = "block"
            tItem.style.marginTop = "0px"
            tAnchor.style.display = "none"
            setTimeout(function() {
                tDeps2MenuBtnBack.style.opacity = 1
            },100)
        }
        
    }

    tDeps2MenuItem.forEach(function(t2mi,i) {
        t2mi.querySelector("a").onmouseenter = function() {
            tDeps2MenuItem.forEach(function(rest,j) {
                rest.querySelector("a").classList.remove("c-header__gnb__list__item__deps2__menu__item__anchor--active")
                tDeps2VisualItem[j].classList.remove("c-header__gnb__list__item__deps2__visual__item--active")
            })
            t2mi.querySelector("a").classList.add("c-header__gnb__list__item__deps2__menu__item__anchor--active")
            tDeps2VisualItem[i].classList.add("c-header__gnb__list__item__deps2__visual__item--active")
        }
    })

    tDeps2Menu.onmouseleave = function() {
        tDeps2MenuItem.forEach(function(rest,k) {
            rest.querySelector("a").classList.remove("c-header__gnb__list__item__deps2__menu__item__anchor--active")
            tDeps2VisualItem[k].classList.remove("c-header__gnb__list__item__deps2__visual__item--active")
        })
        tDeps2MenuItem[tDeps2MenuItemOrgIndex].querySelector("a").classList.add("c-header__gnb__list__item__deps2__menu__item__anchor--active")
        tDeps2VisualItem[tDeps2MenuItemOrgIndex].classList.add("c-header__gnb__list__item__deps2__visual__item--active")

    }

    tDeps2.onmouseleave = function() {
        tAnchor.classList.remove("c-header__gnb__list__item__anchor--active")
        tList.querySelectorAll(".c-header__gnb__list__item")[gOrgIndex].querySelector("a").classList.add("c-header__gnb__list__item__anchor--active")
        gnbDeps2Bg.style.display = "none"

        tAnchor.classList.remove("c-header__gnb__list__item__anchor--on")
    }

    tDeps2MenuBtnBack.onclick = function() {
        tDeps2MenuBtnBack.style.opacity = 0
        setTimeout(function() {
            for (var y = 0; y < gdItem.length; y++) {
                if(gdItem[y].className.indexOf("deps2") > -1) continue;
                gdItem[y].removeAttribute("style")
            }
            tItem.removeAttribute("style")
            tItem.removeAttribute("style")
            tAnchor.removeAttribute("style")
            tAnchor.classList.remove("c-header__gnb__list__item__anchor--on")
        },100)
    }
}


window.addEventListener('DOMContentLoaded', function() {
    initCommonHeader();
})