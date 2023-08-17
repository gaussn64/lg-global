
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

window.addEventListener('DOMContentLoaded', () => {
    // taglineSlider()
    btmdotSlider()
})