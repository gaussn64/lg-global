function getElementIndex(element) {
    return [].indexOf.call(element.parentNode.children, element);
}
function getSiblingsByClass(element, className) {
    const siblings = Array.from(element.parentElement.getElementsByClassName(className));
    const index = siblings.indexOf(element);
    if (index !== -1) {
        siblings.splice(index, 1);
    }
    return siblings;
}


const siblings = (el) => { return [...el.parentNode.children].filter((child) => child !== el) }
function setClass(el, currentClass) {
    let element = el

    const getFirstClass = (element) => {return element.classList[0]}
    const getSibs = siblings(el, getFirstClass(el))

    el.classList.add(currentClass)
    getSibs.forEach(sib => {
        sib.classList.remove(currentClass)
    })
}

/*header*/
function initCommonHeader() {
    var cHeader = document.querySelector("#header.c-header");
    var chPosTop = cHeader.offsetTop - (document.documentElement.scrollTop || window.scrollY);
    var cFooterWrap = document.querySelector("#footer__wrap.c-footer__wrap");
    var cfwOffsetTop = cFooterWrap.offsetTop;
    var gnb = cHeader.querySelector(".c-header__gnb");
    var btnGnb = cHeader.querySelector(".c-header__btn-gnb");
    var btnGnbBar = btnGnb.querySelectorAll(".c-header__btn-gnb__bar");
    var deviceWidth;
    var visualTop = document.querySelector(".visual__top");
    var vtHeight = function() {
        if(!visualTop) {
            return 0
        } else {
            return visualTop.offsetHeight
        }
    }
    var oldScrTop = 0;
    var newScrTop = 0;
    
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

        oldScrTop = winScrollTop

        if(winScrollTop >= vtHeight()) {
            //console.log("test")
            if(newScrTop < oldScrTop) {
                cHeader.style.top = "-"+cHeader.offsetHeight*2+"px"
                newScrTop = oldScrTop
            } else if(newScrTop >= oldScrTop) {
                cHeader.style.top = "0px"
                newScrTop = oldScrTop
            }
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
            //tDeps2.style.width = document.querySelector("body").offsetWidth - 60 + "px"

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
            //tDeps2.style.width = "auto"

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
            tAnchor.style.display = "none"
            setTimeout(function() {
                tItem.style.display = "block"
                tItem.style.marginTop = "0px"
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

/*tab*/
function tabFunc() {
    const tabIndexAll = document.querySelectorAll('.tab-menu__list')
    const bgAll = document.querySelectorAll('span.tab-menu__bg')
    const tabCont = document.querySelectorAll('.tab-container')

    let activeVideo = document.querySelectorAll('.tab-container__content--active video')

    tabIndexAll.forEach((tab) => {
        const buttons = tab.querySelectorAll('.tab-menu__btn')

        buttons.forEach((btn, idx) => {
            btn.addEventListener('click', function(e) {
                e.preventDefault()

                let targetTag = this.parentElement.dataset.tab
                let tabContainer = document.querySelector(`.tab-container[data-tab="${targetTag}"]`)

                let tabId = this.getAttribute('href')
                let tabTarget = document.querySelector(tabId)
                let tabBg = this.parentElement.querySelector('span.tab-menu__bg')
                
                setClass(tabTarget, 'tab-container__content--active') 
                setClass(this, 'tab-menu__btn--active')

                if (tabTarget.querySelector('video') != null) {
                    toggleVideo(tabTarget.querySelector('video'))
                }
                

                setBgPosX(this, tabBg)
            })
        })
    })

    function toggleVideo(targetVideo) {
        targetVideo.currentTime = 0;

        console.log('aaa')
        
        const tabContainer = targetVideo.closest('.tab-container');
        const siblingVideos = tabContainer.querySelectorAll('video:not(.target)');

        siblingVideos.forEach((video) => {
            video.pause();
        });

        targetVideo.play();
    }

    function setBgPosX(btn, target) {
        let btns = Array.from(btn.parentElement.querySelectorAll('.tab-menu__btn'));
        let idx = btns.indexOf(btn);

        let previousButtons = btns.slice(0, idx);

        let totalWidth = previousButtons.reduce((total, currentButton) => {
            return total + currentButton.offsetWidth;
        }, 0);

        target.style.left = `${totalWidth}px`
    }

    function setBgWidth() {
        tabIndexAll.forEach(tab => {
            const tarWidth = tab.querySelector('.tab-menu__btn--active').offsetWidth
            const bg = tab.querySelector('.tab-menu__bg')

            bg.style.width = `${tarWidth}px`
        })
    }

    setBgWidth()
    activeVideo.forEach(el => toggleVideo(el))


    window.addEventListener('resize', ()=> {
        if(window.innerWidth < 769 || window.innerWidth > 2559) {setBgWidth()}
        else {bgAll.forEach(bgs => bgs.style.width = '')}

        tabIndexAll.forEach((tab) => {
            const tabBg = tab.querySelector('span.tab-menu__bg')
            const btn = tab.querySelector('.tab-menu__btn--active')
            setBgPosX(btn, tabBg)
        })
    })
}

function brandElememtsSlider() {
    const brandElements = document.querySelector('.our-identity__slider')
    const swiper = new Swiper(brandElements, {
        slidesPerView: 'auto',
        spaceBetween: 20,
        easing: 'cubic-bezier(0.56, 0, 0.28, 1)',
        navigation: {
            nextEl: '.brand-elements__controller .swiper-button-next',
            prevEl: '.brand-elements__controller .swiper-button-prev',
        },
        scrollbar: {
            el: '.our-identity__progressbar',
            draggable: true
        },
        breakpoints: {
            1279: {
                slidesOffsetBefore: 0,
                slidesOffsetAfter: 0,
            },
            
        }
    });
}


/*change video*/
function resolutionVideo() {
    const changeVideo = document.querySelector('.resolutionVideo')
    if (changeVideo == undefined || null) return
    const source = changeVideo.querySelector('source')
    let winSize = window.innerWidth
    let isMobile = winSize > 768 ? false : true
    let lastSize = ''

    function setVideo() {
        if (isMobile !== lastSize) {
            let currentUrl = winSize > 768 ? source.dataset.urlpc : source.dataset.urlmo
            changeVideo.setAttribute('src', currentUrl)
            lastSize = isMobile
        }
    }

    window.addEventListener('resize', function () {
        winSize = window.innerWidth
        winSize > 768 ? isMobile = false : isMobile = true
        setVideo()
    })

    setVideo()
}

window.addEventListener('DOMContentLoaded', function () {
    initCommonHeader();
    tabFunc() //tab content 
    brandElememtsSlider() //what's next slide
    resolutionVideo()
})