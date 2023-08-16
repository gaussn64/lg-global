
function btmdotSlider() {
    const slideContainer = document.querySelector('.btmdot-slide__container')
    const slideWrap = slideContainer.querySelector('.btmdot-slide__slider')
    const slideTag = slideContainer.querySelector('.btmdot__tag')

    const settings = new Map([
        ['light', 'Light Background'],
        ['dark', 'Dark Background'],
        ['light-gra', 'Light Gradient'],
        ['dark-gra', 'Dark Gradient'],
        ['light-img', 'Light Image'],
        ['dark-img', 'Dark Image']
    ]);

    const swiper = new Swiper(slideWrap, {
        slidesPerView: 1,
        spaceBetween: 30,
        speed: 500,
        easing: 'cubic-bezier(0.56, 0, 0.28, 1)',
        effect : 'fade',
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
    btmdotSlider()
})


