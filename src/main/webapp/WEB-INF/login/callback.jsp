<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("L_JLkR8lU8vY4v1VSTJo", "http://127.0.0.1:9001/login/naver/callback");
  // ì ê·¼ í í° ê° ì¶ë ¥
  alert(naver_id_login.oauthParams.access_token);
  // ë¤ì´ë² ì¬ì©ì íë¡í ì¡°í
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // ë¤ì´ë² ì¬ì©ì íë¡í ì¡°í ì´í íë¡í ì ë³´ë¥¼ ì²ë¦¬í  callback function
  function naverSignInCallback() {
    alert(naver_id_login.getProfileData('email'));
  //  alert(naver_id_login.getProfileData('nickname'));
  //  alert(naver_id_login.getProfileData('age'));
    $("span").text(naver_id_login.getProfileData('email'));
  }
</script>
	<span></span>
	<b><a href="/">님 환영합니다</a></b>
</body>
</html>