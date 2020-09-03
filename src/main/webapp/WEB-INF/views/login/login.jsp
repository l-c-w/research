<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>서울학교급식포털</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

<script type="text/javascript" >
<!--

	var flag1=true;
	var flag2=true;
	
	$(document).ready(function(){
		$(".mainMenu").each(function(index, item){
			$(item).click(function(){
				flag1=false;
			});
		});
		
		$(".subMenu").each(function(index, item){
			$(item).click(function(){
				flag1=true;
				flag2=false;
			});
		});
	});

   function getElementsByClass(searchClass, node, tag) {
     var classElements = new Array();
     if ( node == null ) node = document;
     if ( tag == null ) tag = '*';
     var els = node.getElementsByTagName(tag);
     var elsLen = els.length;
     var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");
     for (i = 0, j = 0; i < elsLen; i++) {
      if ( pattern.test(els[i].className) ) {
        classElements[j] = els[i];
        j++;
      }
    }
    return classElements;
  }

  function menuHidden(menu, sub) {
    menu.src = menu.src.replace("On", "Off");
    sub.style.display = "none";
  }

  function setEvtGnb() {
    var mainMenu = getElementsByClass("mainMenu");
    var prevMenu1, prevSub1, isHid1, prevMenu2, isHid2;
	
	var subMenu = getElementsByClass("subMenu");
	
    for (var i=0; i<mainMenu.length; i++) {
      (function (pos){
        mainMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
          if(prevMenu1) menuHidden(prevMenu1, prevSub1);
          prevMenu1 = this;
          this.src = this.src.replace("Off", "On");
          prevSub1 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
          prevSub1.style.display = "block";
        };
    
        mainMenu[pos].onmouseout = function(e){
          var bool, e= e || event;
          (function (obj, tobj) {
            var childs = obj.childNodes;
            for (var x=0; x<childs.length; x++) {
              if(childs[x] == tobj) bool = true;
              else arguments.callee(childs[x], tobj);
            }
          })(this, document.elementFromPoint(e.clientX, e.clientY));
          if(flag1){
	          if(bool) return false;
	          menuHidden(prevMenu1, prevSub1);
          }
        };
      })(i);
    }
	
	for (var j=0; j<subMenu.length; j++) {
      (function (pos){
        subMenu[pos].getElementsByTagName("img")[0].onmouseover = function(){
          prevMenu2 = this;
          this.src = this.src.replace("Off", "On");
          prevSub2 = document.getElementById("sub"+("0"+(pos+1)).match(/..$/));
       	  flag2=true;
        };
    
        subMenu[pos].onmouseout = function(e){
          var bool, e= e || event;
          (function (obj, tobj) {
            var childs = obj.childNodes;
            for (var x=0; x<childs.length; x++) {
              if(childs[x] == tobj) bool = true;
              else arguments.callee(childs[x], tobj);
            }
          })(this, document.elementFromPoint(e.clientX, e.clientY));
          if(flag2){
	          if(bool) return false;
	          menuHidden(prevMenu2, prevSub2);
          }
        };
      })(j);
    }
  }
 
  window.onload = function() {
    setEvtGnb();
  }
//-->
</SCRIPT>

</head>
<body>

<div id="wrap"> 
  
   <ul id="skipnavi">
    <li><a href="#gnb">주메뉴 바로가기</a></li>
    <li><a href="#contents">메인내용 바로가기</a></li>
    <li><a href="#footer">하단 바로가기</a></li>
  </ul>
  <!--skip E--> 
  
  <!-- header -->
<jsp:include page="../header_footer/header.jsp" />

  
  <!-- container-->
  <div id="container">
    <div id="contents">
      <h2>메인내용</h2>
       <ul class="lnb">
        <li><img src="images/sub/etc/sub_title_01.gif" alt="정보마당" /></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_01Off.gif" alt="로그인" /></a></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_02Off.gif" alt="본인확인" /></a></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_03Off.gif" alt="관련기관링크" /></a></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_04On.gif" alt="개인보호정책" /></a></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_05Off.gif" alt="이메일무단수집거부" /></a></li>
        <li><a href="#"><img src="images/sub/etc/sub_stitle_06Off.gif" alt="저작권보호" /></a></li>
         <li><a href="#"><img src="images/sub/etc/sub_stitle_07Off.gif" alt="뷰어프로그램" /></a></li>
         <li><a href="#"><img src="images/sub/etc/sub_stitle_08Off.gif" alt="팝업관리" /></a></li>
         <li><a href="#"><img src="images/sub/etc/sub_stitle_09Off.gif" alt="사이트맵" /></a></li>
      </ul>
      <div class="right_box">
        <h3><img src="images/sub/etc/title_01.gif" alt="로그인" /></h3>
        <p class="history"><img src="images/sub/history_home.gif" alt="home" /> 기타 <img src="images/sub/history_arrow.gif" alt="다음" /> <strong>로그인</strong></p>
        <p class="pt30"></p>
       
       <!-- login-->
       	<fieldset>
        	<legend>로그인</legend>
        	<div class="login">            
            	<h4><img src="images/sub/etc/login_img_01.gif" alt="아이디를 입력하세요" /></h4>
                <form name="login" action="login" method="post">
                <dl>
                <c:if test="${empty sessionScope.userID }">
                	<dt>아이디</dt>
                    <dd><input type="text" class="inp" name="user_id" id="aa" style="width:180px; margin-left: 12px;"></dd>
                    <br><br>
                    <dt>비밀번호</dt>
                    <dd><input type="password" class="inp" name="user_pw" id="aa" style="width:180px;"> 
                    
                   <img src="images/sub/etc/login_btn.gif" alt="로그인" onclick="login.submit()" style="cursor: pointer;"/> <a href="#"><img src="images/sub/etc/login_btn_01.gif" alt="사용자등록" /></a></dd>
                </c:if>    
                <c:if test="${not empty sessionScope.userID }">
                <strong>${sessionScope.userName }</strong>님 환영합니다!
                </c:if>
                </dl>
                </form>
                <ul class="login_text">
                	<li>학생, 학부모, 시민은 별도의 회원가입 없이 본인확인(아이핀인증 또는 실명인증)만으로 <br />서비스 이용이 가능합니다. (사용자 등록 불가)</li>
                    <li>서울특별시교육청(학교 포함) 소속 교직원은 나이스 아이디와 인증서로 로그인을 하시기 바랍니다.<br />
						<span class="f_eb7c10">※ 로그인이 되지 않을 경우, 서울시교육청 홈페이지에서 먼저 사용자 등록을 하시기 바랍니다.</span>
					</li>
                </ul>
                
            </div>	
        	
        </fieldset>
       
       <!-- //login--> 
        
      </div>
      
      <p class="bottom_bg"></p>
    </div>
  </div>
  <!-- //container-->
  
<!-- footer -->
<jsp:include page="../header_footer/footer.jsp" />
</div>

<script>
	
	
	$(document).ready() {
		
		alert("리로드");
		
	
		
	});


</script>



</body>
</html>