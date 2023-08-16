
function outOfHomeSlider() {
    const slider = document.querySelector('.bring-it-to-life__slide')
    const slideTag = document.querySelector('.bring-it-to-life .index-text')
    const tag = ['.com', 'Mobile experience', 'Social', 'Social']

    const swiper = new Swiper(slider, {
        slidesPerView: 1,
        spaceBetween: 20,
        easing: 'cubic-bezier(0.56, 0, 0.28, 1)',
        navigation: {
            prevEl: '.bring-it-to-life__slide__controller .prev-btn',
            nextEl: '.bring-it-to-life__slide__controller .next-btn',
        },
    })

    swiper.on('activeIndexChange', ()=> {
        let idx = swiper.activeIndex
        let idxTag = tag[idx]

        slideTag.textContent = idxTag
    })
} 


window.addEventListener('DOMContentLoaded', () => {
    outOfHomeSlider()
})
