<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script type="text/javascript">
initPage = function() {
	
};

doGoTab = function(thisObject, tab) {
	$(".business_tab").find(">li>a").each(function(index, el) {
		$(el).removeClass("business_tab0"+(index+1)+"_on");
		$(el).addClass("business_tab0"+(index+1));
	});
	$(thisObject).addClass("business_tab"+tab+"_on");
	if("01"==tab){
		$("#tab02").hide();
		$("#tab01").show();
	}else{
		$("#tab01").hide();
		$("#tab02").show();
	}
	
};
</script>
</head>
<body>
<div id="wrap"> 
 <!--skip S-->
  <ul id="skipnavi">
    <li><a href="#gnb">주메뉴 바로가기</a></li>
    <li><a href="#contents">메인내용 바로가기</a></li>
    <li><a href="#footer">하단 바로가기</a></li>
  </ul>
  <!--skip E--> 
  
  <!-- header-->
  <jsp:include page="../header_footer/header.jsp" />
  
  <!-- container-->
  <div id="container">
    <div id="contents">
      <h2>메인내용</h2>
      <ul class="lnb">
        <li><img src="images/sub/particiation/sub_title_01.gif" alt="알림마당" /></li>
        <li><a href="#"><img src="images/sub/particiation/sub_stitle_01Off.gif" alt="학교급식인력풀" /></a></li>
        <li><a href="#"><img src="images/sub/particiation/sub_stitle_02Off.gif" alt="영양(교)사이야기" /></a></li>
        <li><a href="#"><img src="images/sub/particiation/sub_stitle_03Off.gif" alt="조리(원)사이야기" /></a></li>
        <li><a href="#"><img src="images/sub/particiation/sub_stitle_04Off.gif" alt="자유게시판" /></a></li>
        <li><a href="#"><img src="images/sub/particiation/sub_stitle_05On.gif" alt="설문조사" /></a></li>
      </ul>
      <div class="right_box">
        <h3><img src="images/sub/particiation/title_05.gif" alt="설문조사" /></h3>
        <p class="history"><img src="images/sub/history_home.gif" alt="home" /> 알림마당 <img src="images/sub/history_arrow.gif" alt="다음" /> <strong>설문조사</strong></p>
        <p class="pt30"></p>
        
       
        <div class="tbl_box">
        <form action="researchCreate" method="post" name="research_input">
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_type01" summary="설문조사">
            <caption>
            설문조사
            </caption>
            <colgroup>
            <col width="15%"/>
            <col width="20%"/>
            <col width="15%"/>
            <col width="20%"/>
            <col width="15%"/>
            <col width="%"/>
            </colgroup>
            <tbody>
            
              <tr>
                <th>제목</th>
                <td colspan="5" class="tl"><input type="text" id="rs_title" name="rs_title" class="inp" /></td>
                </tr>
              <tr>
                <th>시작일</th>
                <td class="tl"><input type="date" id="rs_sdate" name="rs_sdate" class="inp" style="width:120px;" /></td>
                <th>종료일</th>
                <td class="tl"><input type="date" id="rs_edate" name="rs_edate" class="inp" style="width:120px;" /></td>
                <th>작성자</th>
                <td style="vertical-align: middle;"><label style="margin-top : 15px;">${sessionScope.userName }<input type="hidden" id="rs_writer" name="rs_write" value="${sessionScope.userName }"></label></td>
              </tr>
              <!-- <tr>
                <th>문항수</th>
                <td colspan="1" class="tl">
                <select id="aa" name="aa">
                	<option>1개</option>
                    <option>2개</option>
                    <option>3개</option>
                    <option>4개</option>
                    <option>5개</option>
                </select>
                </td>
                <th>기본 보기 개수</th>
                <td colspan="1" class="tl">
                <select id="aa" name="aa">
                	<option>1개</option>
                    <option>2개</option>
                    <option>3개</option>
                    <option>4개</option>
                    <option>5개</option>
                </select>
                </td>
                </tr> -->
              <tr>
               <td colspan="6" class="tl" id="research" style="border-bottom: none;">
               	   <div class="question" id="question_1" style="margin-bottom: 80px; ">
                       <p><p><strong>질문 <span id="question_1num">1</span>)</strong></p><input type="text" id="q1" name="question" class="inp"  style="width: 90.5%" />
                       <img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="cursor: pointer;" onclick="delete_question('question_1')"></p>
                       <br>
                        <ul style=padding-bottom: 100px; border-bottom: 2px solid black;">
    					<div id="e1">
                        <li id="example1_1" class="example1" style="margin-bottom: 5px;">보기 <span class="numbering1" id="numbering1_1">1.</span> <input type="text" id="aa" name="example1" class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('example1_1','numbering1')"></li>
                        <li id="example1_2" class="example1" style="margin-bottom: 5px;">보기 <span class="numbering1" id="numbering1_2">2.</span> <input type="text" id="aa" name="example1" class="inp"   /><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('example1_2','numbering1')"></li>
                        <li id="example1_3" class="example1" style="margin-bottom: 5px;">보기 <span class="numbering1" id="numbering1_3">3.</span> <input type="text" id="aa" name="example1" class="inp"   /><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('example1_3','numbering1')"></li>
                        <li id="example1_4" class="example1" style="margin-bottom: 5px;">보기 <span class="numbering1" id="numbering1_4">4.</span> <input type="text" id="aa" name="example1" class="inp"  /><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('example1_4','numbering1')"></li>
                        <li id="example1_5" class="example1" style="margin-bottom: 5px;">보기 <span class="numbering1" id="numbering1_5">5.</span> <input type="text" id="aa" name="example1" class="inp"   /><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('example1_5','numbering1')"></li>
                        </div>
                        <li style="padding-bottom: 20px;"><button type="button" onclick="add_example('e1','example1','numbering1')" style="float:right; margin-right:40px; width: 100px; margin-top: 10px; margin-bottom:10px;  cursor: pointer;" >보기 추가</button></li>
                        </ul>
					</div>
               </td>
              </tr>
              <tr>
              <td colspan="6" class="tl">
                 <li><button type="button" onclick="add_question()" style="width: 700px; cursor: pointer;" >질문 추가</button></li>
                 </td>
              </tr>
              
              
              <!-- <tr>
               <th>첨부파일</th>
               <td colspan="5" class="tl">
               		<input type="file" id="aa" name="aa" />
               </td>
              </tr> -->
            </tbody>
          </table>
          
          <p class="pt40"></p>
          <!-- btn--> 
          <span class="bbs_btn"> 

          <span class="wte_l"><a href="#" class="wte_r">목록</a></span>
          <span class="per_l" onclick="reg_research()" style="cursor: pointer;"><a class="pre_r">등록</a></span>
          <span class="wte_l"><a href="#" class="wte_r">취소</a></span>
          
          

          </span> 
          <!-- //btn--> 
          </form>
        </div>
      </div>
      
      <p class="bottom_bg"></p>
    </div>
  </div>
  <!-- //container-->
  
  <!-- footer -->
<jsp:include page="../header_footer/footer.jsp" />
</div>

<script>
	$(document).ready(function() {
		
	});
	
	//보기 추가
	function add_example(ul_id,li_class,number_class) {
		
		
		var get_ulid="#"+ul_id;
		var get_liclass="."+li_class;
		var get_nclass="."+number_class;
		
		
		
		
		var class_array =new Array;
		$(get_liclass).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		if(class_array.length=='10'){
			alert("보기는 10개까지 등록가능 합니다.");
			return;
		}
		
		var last_id=class_array[class_array.length-1];
		var split = last_id.split('_');
		var split_result=split[1]*1+1;	
				
		var html=`<li id=`+li_class+`_`+split_result+` class=`+li_class+` style="margin-bottom: 5px;">보기 <span class=`+number_class+` id=`+number_class+`_`+split_result+`>`+split_result+`.</span> 
				<input type="text" id="aa" name=`+li_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" 
				onclick="delete_example('`+li_class+`_`+split_result+`','`+number_class+`')"></li>`;
				
		$(get_ulid).append(html);
		
		numbering(number_class);
	}
	
	//보기 항목 삭제
	function delete_example(target_id,target_class) {
		
		var get_liclass="."+target_class;
		
		var class_array =new Array;
		$(get_liclass).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		if(class_array.length=='2'){
			alert("보기는 최소 2개 존재해야 합니다.");
			return;
		}
		
		var get_id="#"+target_id;
		
		$('li').remove(get_id);
		
		numbering(target_class);
	}
	
	//보기 번호 넘버링
	function numbering(target_class) {
		var get_class="."+target_class;
		
		var class_array =new Array;
		$(get_class).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		var class_length=$(get_class).length;
		
		for (var i = 0; i < class_length; i++) {
			var change_number="#"+class_array[i];
			
			$(change_number).text((i+1)+".");
		}
	}
	
	//질문 추가
	function add_question(q_class) {
		
		var get_qclass = ".question";
		
		var class_array =new Array;
		$(get_qclass).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		var last_id=class_array[class_array.length-1];
		var split = last_id.split('_');
		var split_result=split[1]*1+1;	
		
		var question_id="question_"+split_result;
		
		var q_id = "q"+split_result;
		
		var example_class="example"+split_result;
		var number_class = "numbering"+split_result;
		
		var html=` <div class="question" id="`+question_id+`" style="margin-bottom: 80px;">
            <p><p><strong>질문 <span id="`+question_id+`num">`+split_result+`</span>)</strong></p><input type="text" id=`+q_id+` name="question" class="inp"  style="width: 90.5%"  />
            	<img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="cursor: pointer;" onclick="delete_question('`+question_id+`')"></p>
            <br>
             <ul >
				<div id="e`+split_result+`">
             <li id="`+example_class+`_1" class="`+example_class+`" style="margin-bottom: 5px;">보기 <span class="`+number_class+`" id="`+number_class+`_1">1.</span> <input type="text" id="aa" name=`+example_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('`+example_class+`_1','`+number_class+`')"></li>
             <li id="`+example_class+`_2" class="`+example_class+`" style="margin-bottom: 5px;">보기 <span class="`+number_class+`" id="`+number_class+`_2">2.</span> <input type="text" id="aa" name=`+example_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('`+example_class+`_2','`+number_class+`')"></li>
             <li id="`+example_class+`_3" class="`+example_class+`" style="margin-bottom: 5px;">보기 <span class="`+number_class+`" id="`+number_class+`_3">3.</span> <input type="text" id="aa" name=`+example_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('`+example_class+`_3','`+number_class+`')"></li>
             <li id="`+example_class+`_4" class="`+example_class+`" style="margin-bottom: 5px;">보기 <span class="`+number_class+`" id="`+number_class+`_4">4.</span> <input type="text" id="aa" name=`+example_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('`+example_class+`_4','`+number_class+`')"></li>
             <li id="`+example_class+`_5" class="`+example_class+`" style="margin-bottom: 5px;">보기 <span class="`+number_class+`" id="`+number_class+`_5">5.</span> <input type="text" id="aa" name=`+example_class+` class="inp"/><img src="images/sub/btn/btn_minus.png" width="20px" height="20px" style="margin-left: 5px; cursor: pointer;" onclick="delete_example('`+example_class+`_5','`+number_class+`')"></li>
             </div>
             <li style="padding-bottom: 20px;"><button type="button" onclick="add_example('e`+split_result+`','`+example_class+`','`+number_class+`')" style="float:right; margin-right:40px; width: 80px; margin-top: 10px; margin-bottom:10px; cursor: pointer;" >보기 추가</button></li>
            
             </ul>
			</div>`;
   			 
   			 
   			 var research_id="#research";
   			 
			$(research_id).append(html);
			
			qnumbering();
	}
	
	//질문 삭제
	function delete_question(target_id,target_class) {
		
		var get_liclass=".question";
		
		var class_array =new Array;
		$(get_liclass).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		if(class_array.length=='1'){
			alert("질문은 최소 1개 존재해야 합니다.");
			return;
		}
		
		var get_id="#"+target_id;
		
		$('div').remove(get_id);
		
		qnumbering();
	}
	
	
	
	//질문번호 넘버링
	function qnumbering() {
		
		var get_class=".question";
		
		var class_array =new Array;
		$(get_class).each(function() {
			class_array.push($(this).attr('id'));
		});
		
		var class_length=$(get_class).length;
		
		for (var i = 0; i < class_length; i++) {
			var change_number="#"+class_array[i]+"num";
			$(change_number).text((i+1));
		}
	}
	
	//질문 등록
	function reg_research() {
		research_input.submit();
	}
	

</script>















</body>
</html>
