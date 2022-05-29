<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> 
  <title>ë¤ì´ë² ë¡ê·¸ì¸</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
  <div id="naver_id_login"></div>
  <script type="text/javascript">
  	var naver_id_login = new naver_id_login("L_JLkR8lU8vY4v1VSTJo", "http://127.0.0.1:9001/login/naver/callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2, 150);
  	naver_id_login.setDomain("http://127.0.0.1:9001/login/naver");
  	naver_id_login.setState(state);
  	naver_id_login.init_naver_id_login();
  </script>
</html>

