function getSiblingsByClass(element, className) {
    const siblings = Array.from(element.parentElement.getElementsByClassName(className));
    const index = siblings.indexOf(element);
    if (index !== -1) {
        siblings.splice(index, 1);
    }
    return siblings;
}

function setClass(el, currentClass) {
    let element = el
    
    const getFirstClass = (element) => {return element.classList[0]}
    const getSibs = getSiblingsByClass(el, getFirstClass(el))

    el.classList.add(currentClass)
    getSibs.forEach(sib => {
        sib.classList.remove(currentClass)
    })
}

function taglineSlider() {
    const slide = document.querySelector('.tagline__slider')

    const swiper = new Swiper(slide, {
        slidesPerView: 1,
        spaceBetween: 30,
        easing: 'cubic-bezier(0.56, 0, 0.28, 1)',
        speed: 500,
        navigation: {
            nextEl: '.taglien__content .swiper-button-next',
            prevEl: '.taglien__content .swiper-button-prev',
        },

    })

}

function btmdotSlider() {
    const slideContainer = document.querySelector('.btmdot-slide__container')
    const slideWrap = slideContainer.querySelector('.btmdot-slide__slider')
    const slideTag = slideContainer.querySelector('.btmdot__tag')

    const settings = new Map([
        ['dark', 'White on dark background'],
        ['light', 'Active Red on Light Background'],
        ['light-gra', 'Black on Gradient 01'],
        ['dark-gra', 'White on Gradient 04'],
        ['light-img', 'Black on Light Image Background'],
        ['dark-img', 'White on Dark Image Background']
    ]);

    const swiper = new Swiper(slideWrap, {
        slidesPerView: 1,
        spaceBetween: 30,
        easing: 'cubic-bezier(0.56, 0, 0.28, 1)',
        effect : 'fade',
        speed: 500,
        pagination: {
            el: ".btmdot-slide__pagination",
            clickable: true,
            bulletClass: 'btmdot-slide__pagination__btn',
            bulletActiveClass: 'btmdot-slide__pagination__btn--active',
            renderBullet: function (index, className) {
                return `<button class="${className} ${className}--${Array(...settings.keys())[index]}"></button>`;
            },
        },
    });

    swiper.on('activeIndexChange', ()=> {
        let index = swiper.activeIndex
        let currentClass = Array(...settings.keys())[index]
        let currentText = Array(...settings.values())[index]

        slideContainer.dataset.typeSet = currentClass
        slideTag.textContent = currentText
    })
}
function tabFunc() {
    const tabIndexAll = document.querySelectorAll('.tab-menu__list')
    const bgAll = document.querySelectorAll('span.tab-menu__bg')

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

                setBgPosX(this, tabBg)
            })
        })
    })

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


window.addEventListener('DOMContentLoaded', () => {
    // taglineSlider()
    btmdotSlider()
    tabFunc() //tab content 
    brandElememtsSlider() //what's next slide

})