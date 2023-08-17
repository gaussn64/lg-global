

/*메인 화면 비디오*/
function visualVideo() {
    let player = videojs('video-item', {
        sources: [
            {src : '../img/philosophy/20230406_LG_BrandfilmMaster_88.mp4', type: 'video/mp4'}
        ],
        controls : true,
        playsinline : true,
        muted : false,
        preload : "metadata",
        controlBar : {
            remainingTimeDisplay : false,
            pictureInPictureToggle: false,
            fullscreenToggle: false,
            volumePanel: false,
            muteToggle: true
        },
        userActions: {
            timeTooltip: false
        }
    })

    const video = document.querySelector('#video-item')
    const videoPlayBtn = document.querySelector('.btn-play')

    // 볼륨 버튼을 클릭하여 볼륨 끄고 켜기 기능 추가
    let volumeMuted = false
    let volumeBeforeMuted
    function popupShow(toggle) {
        const body = document.querySelector('body')
        const popup = document.querySelector('.popup-in-action')


        if (toggle) {
            popup.style.display = "block"
            body.classList.add('isPopupOpen')
            player.play(); // 일시 정지된 경우 재생
        } else {
            popup.style.display = 'none'
            body.classList.remove('isPopupOpen')
            video.currentTime = 0;
            player.pause(); // 재생 중인 경우 일시 정지
        }
    }

    function videoMobileTouch () {
        player.on('touchstart', function() {
            if (player.paused()) {
                player.play(); // 일시 정지된 경우 재생
            } else {
                player.pause(); // 재생 중인 경우 일시 정지
            }
        });
    }



    videoPlayBtn.addEventListener('click', () => {
        popupShow(true) //팝업 열림
    })
    
    function popupInit() {
        const btnClose = document.querySelector('.btn-circle--close')
        btnClose.addEventListener('click', () => popupShow(false))
    }

    popupInit()
    videoMobileTouch ()

}

function emotionallyDesign () {
    const headlines = document.querySelectorAll('.imotionally-design__headline li')

    headlines.forEach((item, idx) => {
        item.addEventListener('mouseenter', function(){
            setClass(item, 'active')
            item.classList.add('active')
        })
    })
}

const handleScroll = (element) => {
    const windowHeight = window.innerHeight;
    const elementTop = element.getBoundingClientRect().top;
    
    if (elementTop <= windowHeight * 0.7) {
        element.classList.add('animated');
    } else {
        element.classList.remove('animated');
    }
};

function slideUpAni() {
    const targets = document.querySelectorAll('.addMotion .imotionally-design__imgwrap li')

    window.addEventListener('scroll', function() {

        targets.forEach(el => {
            handleScroll(el)
        })

    })

}

window.addEventListener('DOMContentLoaded', () => {
    visualVideo()
    emotionallyDesign ()
    brandElememtsSlider()
    slideUpAni()
})
