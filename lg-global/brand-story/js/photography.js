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

function photographyEvent() {
    
    const hoverTarget = document.querySelectorAll('.photography__item')

    const onEnter = (event) => {
        event.target.classList.add('photography__item--hover')
    }

    const onLeave = (event) => {
        event.target.classList.remove('photography__item--hover')
    }

    const onClick = (event) => {
        const eventTarget = event.target.closest('.photography__item')

        if (eventTarget.classList.contains('photography__item--hover')) {
            eventTarget.classList.remove('photography__item--hover')
        } else {
            eventTarget.classList.add('photography__item--hover')
        }
    }

    const updateEventBindings = () => {
        if (window.innerWidth <= 1024) {
            hoverTarget.forEach(el => {
                let btn = el.querySelector('dl')

                el.classList.remove('photography__item--hover')

                el.removeEventListener('mouseenter', onEnter)
                el.removeEventListener('mouseleave', onLeave)
                btn.addEventListener('click', onClick)
            });
        } else {
            hoverTarget.forEach(el => {
                let btn = el.querySelector('dl')

                el.classList.remove('photography__item--hover')

                btn.removeEventListener('click', onClick)
                el.addEventListener('mouseenter', onEnter)
                el.addEventListener('mouseleave', onLeave)
            });
        }
    }

    // 초기 로딩 시 이벤트 바인딩 업데이트
    updateEventBindings()

    // 창 크기가 변경될 때마다 이벤트 바인딩 업데이트
    window.addEventListener('resize', updateEventBindings)
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
        else {bgAll.forEach(bgs => bgs.style = '')}
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
    tabFunc() //tab content 
    brandElememtsSlider() //what's next slide
    photographyEvent()

})
