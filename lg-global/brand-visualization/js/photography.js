
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

window.addEventListener('DOMContentLoaded', () => {
    photographyEvent()

})
