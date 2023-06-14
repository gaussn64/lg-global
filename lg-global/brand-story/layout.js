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

function initGnbDeps2(tAnchor) {
    if(window.innerWidth <= 768) {
        return false;
    }

    var tAnchor = tAnchor;
    var tItem = tAnchor.parentNode;
    var tList = tItem.parentNode;
    var tDeps2 = tItem.querySelector(".c-header__gnb__list__item__deps2");
    var tDeps2Menu = tDeps2.querySelector(".c-header__gnb__list__item__deps2__menu");
    var tDeps2MenuItem = tDeps2Menu.querySelectorAll(".c-header__gnb__list__item__deps2__menu__item");
    var tDeps2MenuItemOrgIndex = getElementIndex(document.querySelector(".c-header__gnb__list__item__deps2__menu__item__anchor--active").parentNode);
    var tDeps2Visual = tDeps2.querySelector(".c-header__gnb__list__item__deps2__visual");
    var tDeps2VisualItem = tDeps2Visual.querySelectorAll(".c-header__gnb__list__item__deps2__visual__item");
        tDeps2VisualItem[tDeps2MenuItemOrgIndex].classList.add("c-header__gnb__list__item__deps2__visual__item--active")

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
        tList.querySelectorAll(".c-header__gnb__list__item")[tDeps2MenuItemOrgIndex].querySelector("a").classList.add("c-header__gnb__list__item__anchor--active")

        tAnchor.classList.remove("c-header__gnb__list__item__anchor--on")
    }
}


window.addEventListener('DOMContentLoaded', function() {
    initCommonHeader();
})