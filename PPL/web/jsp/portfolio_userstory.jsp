<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-30
  Time: 오후 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=2" type="text/css" rel="stylesheet" />
    <link href="../css/portfolio_userstorystyle.css?" type="text/css" rel="stylesheet" />

    <script type="text/javascript">
        function add_div(){
            var div = document.createElement('div');
            div.innerHTML = document.getElementById('project_group').innerHTML;
            document.getElementById('field').append(div);
        }

        function remove_div(obj){
            document.getElementById('field').removeChild(obj.parentNode);
        }

    </script>
    <title>userstory</title>
</head>
<body>
    <div class="top">
        <!--ppl logo-->
        <a href = "index.jsp">
            <img id="ppl_home" src="../icon/ppl_logo.png"  alt="ppl" />
        </a>

        <!--로그인-->
        <div class = "login">
            <a href="loginpage.jsp">로그인 / 회원가입</a>
        </div>
    </div>

    <!--메뉴바-->
    <ul class="mainmenu">
        <li class ="menu" id="searchmenu"><a href="searchpage.jsp">SEARCH</a></li>
        <li class ="menu" id="portfoliiomenu"><a href = "portfolio.jsp">PORTFOLIO</a></li>
        <li class ="menu" id ="productmenu"><a href = "product.jsp">PRODUCT</a></li>
    </ul>
    <div class = "side">
        <h1>2. 사용자 스토리</h1>
    </div>

    <div class="contents">
        <p class="contents_header">개인 역량</p>
        <div class="ability">

            <form action="" method="post">
                <table class="develop_field">
                    <tr>
                        <th class="table_header" colspan="5"> 개발 분야 </th>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="dev_field" value="android" id="android"> <label for="android">Android</label></th>
                        <th><input type="checkbox" name="dev_field" value="ios" id="ios"> <label for="ios">iOS</label></th>
                        <th><input type="checkbox" name="dev_field" value="web" id="web"> <label for="web">Web</label></th>
                        <th><input type="checkbox" name="dev_field" value="server" id="server"> <label for ="server">Server</label></th>
                        <th><input type="checkbox" name="dev_field" value="another" id="another_df"> <label for="another_df">그 외</label>
                            <input type="text" id="another_df_" placeholder="입력하세요..."></th>
                    </tr>
                </table>

                <table class="specific_field">
                    <tr>
                        <th class="table_header" colspan="5"> 전문 분야 </th>
                    </tr>
                    <tr class="develop_filed_firstcol">
                        <th><input type="checkbox" name="spe_field" value="secure" id="secure"> <label for="secure">보안</label></th>
                        <th><input type="checkbox" name="spe_field" value="iot" id="iot"> <label for="iot">IoT</label></th>
                        <th><input type="checkbox" name="spe_field" value="ai" id="ai"> <label for="ai">인공지능</label></th>
                        <th><input type="checkbox" name="spe_field" value="bigdata" id="bigdata"> <label for="bigdata">빅데이터</label></th>
                        <th><input type="checkbox" name="spe_field" value="database" id="database"> <label for="database">DB</label></th>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="spe_field" value="game" id="game"> <label for="game">게임</label></th>
                        <th><input type="checkbox" name="spe_field" value="networking" id="networking"> <label for="networking">네트워킹</label></th>
                        <th><input type="checkbox" name="spe_field" value="os" id="os"> <label for="os">운영체제</label></th>
                        <th colspan="2"><input type="checkbox" name="develop" value="another" id="another_sf"> <label for="another_sf">그 외</label>
                            <input type="text" id="another_sf_" placeholder="입력하세요..."></th>
                    </tr>
                </table>

                <table class="develop_language">
                    <tr>
                        <th class="table_header" colspan="5"> 사용 가능 언어 </th>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="dev_lang" value="c" id="c"> <label for="c">C</label></th>
                        <th><input type="checkbox" name="dev_lang" value="c++" id="c++"> <label for="c++">C++</label></th>
                        <th><input type="checkbox" name="dev_lang" value="java" id="java"> <label for="java">Java</label></th>
                        <th><input type="checkbox" name="dev_lang" value="c#" id="c#"> <label for="c#">C#</label></th>
                        <th colspan="2"><input type="checkbox" name="develop" value="another" id="another_dl"> <label for="another_dl">그 외</label>
                            <input type="text" id="another_dl_" placeholder="입력하세요..."></th>
                    </tr>
                </table>
            </form>
        </div>
        <br><br>
        <hr>

        <div class="project_experience">
            <p class="contents_header">프로젝트 경험</p>
            <h5>+버튼을 눌러서 프로젝트를 추가해주세요!</h5>
            <input type="button" class="addprojectbtn" onclick="add_div()">
                <div id="project_group">
                    <div class="project_form">
                        <label for="project_name">프로젝트 이름</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" id="project_name"> <br>
                        <div class="tomargin">
                            <label for="project_info" margin-top="15px">프로젝트 설명</label>&nbsp;&nbsp;&nbsp;
                            <textarea id="project_info"></textarea> <br>
                        </div>
                        <label for="project_link">프로젝트 링크</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" id="project_link" placeholder="ex) Github 링크"><br>
                        <div class="tomargin">
                            <label>첨부파일</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="file">
                            <h6 id="project_img_ex">프로젝트 대표 이미지로 사용될 이미지를 첨부하세요.</h6>
                        </div>
                        <input type="submit" value="" class="project_storebtn">
                    </div>
                    <input type ="button" onclick="remove_div(this)" class="project_removebtn">
                </div>
            <div id="field">
            </div>


        </div>
        <div class="bottomnav">
            <a href = "portfolio_basicinfo.jsp"><input type="button" class="backbtn" ></a>
            <a href = "portfolio_recomendtemplete.jsp"><input type="button" class="nextbtn"></a>
        </div>
    </div>






</body>
</html>
