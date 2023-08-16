<!-- FOOTER -->
<div id="footer__wrap" class="c-footer__wrap">
    <footer id="footer" class="c-footer">
        <div class="footer-top">
            <ul>
                <li><a class="icon-sns facebook" href="#"></a></li>
                <li><a class="icon-sns twitter" href="#"></a></li>
                <li><a class="icon-sns instagram" href="#"></a></li>
                <li><a class="icon-sns youtube" href="#"></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <div class="footer-inner">
                <ul class="foot-location">
                    <li>
                        <a href="#">Site map</a>
                        <a href="#">Privacy policy</a>
                    </li>
                    <li>
                        <a href="#">Legal</a>
                        <a href="#">CEDOC</a>
                        <a href="#">SAR</a>
                        <a href="#">LG Affiliates</a>
                    </li>
                </ul>
                <p class="c-copyright">
                    Copyright © 2009-2023 LG Electronics. <br class="mo">
                    All Rights Reserved
                </p>
            </div>
            <a class="c-hotline" href="#">
                LG Jeong-Do Management<br>
                Ethics <br class="mo">Hotline
            </a>
        </div>
    </footer>
</div>


<script>
	var xmlHttp;

	function srvTime() {

		if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
			xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
			xmlHttp.open('HEAD', window.location.href.toString(), false);
			xmlHttp.setRequestHeader("Content-Type", "text/html");
			xmlHttp.send('');
			return xmlHttp.getResponseHeader("Date");
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
			xmlHttp.open('HEAD', window.location.href.toString(), false);
			xmlHttp.setRequestHeader("Content-Type", "text/html");
			xmlHttp.send('');
			return xmlHttp.getResponseHeader("Date");
		}
	}

	setTimeout(function (){
		var st = srvTime();
		var today = new Date(st);
		$("#footer address span").text(today.getFullYear())
	}, 1000)
</script>