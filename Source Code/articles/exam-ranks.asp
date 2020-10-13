<!DOCTYPE html>
<html lang="en">
<head>
    <%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
	<meta charset="utf-8">
	<title>Online Test - jbji's Zone</title>
	<link rel="stylesheet" type="text/css" href="../css/common-navicp-style.css">
	<link rel="stylesheet" type="text/css" href="../css/article-style.css">
	<link rel="stylesheet" type="text/css" href="../css/exam.css">
	<script>
		MathJax = {tex: {inlineMath: [['$', '$'], ['\\(', '\\)']]},svg: {fontCache: 'global'}};
	</script>
	<script type="text/javascript" id="MathJax-script" async
	  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js">
	</script>
	<script type="text/javascript" src="../js/exam.js"></script>
</head>

<body onload="startTime()">
	<script src="/js/navi.js"></script>
	<div class="banner">
		<h1>Online Test System - More</h1>
	</div>
	<div class="article">
		<div class = "right">
		    <div class="content">
                <h1 id="blueTitle">Lastest Results 最新提交</h1><br><br>
                    <% set conn=Server.CreateObject("ADODB.Connection")
                    conn.Provider="Microsoft.Jet.OLEDB.4.0"
                    conn.Open server.mappath("/database/exam-score.mdb")
                    set rs = Server.CreateObject("ADODB.recordset")
                    sql="SELECT nickname,score,timestring,submittime FROM score "
                    sql= sql & "ORDER BY submittime DESC"
                    rs.Open sql, conn
                    %>

                    <table class="score">
                      <tr>
                        <th>Nickname</th><th>Score</th><th>Time</th><th>Submit</th>
                      </tr>
                      <%dim i
                       i=1
                       do until (rs.EOF Or i>50)%>
                        <tr>
                        <%for each x in rs.Fields%>
                          <td><%Response.Write(x.value)%></td>
                        <%
                        next
                        rs.MoveNext
                        i=i+1
                        %>
                        </tr>
                      <%loop
                      rs.close
                      conn.close%>
                    </table>
		    </div>
		</div>
		<div class = "left">
			<div class = "lcontent">
				<p id="TimeCaption">CurrentTime (Local)<br>当前时间(本地)</p>
				<div id="Date"></div>
				<div id="Realtime-Time"></div>
				<div id="Greeting"></div>
				<div id="greeting-tip"></div>
			</div>
			<div class = "lcontent" id="examTimer" style="display: none">
				<p><b>Exam Timer  计时</b></p>
				<div id="ExamTime"></div>
			</div>
            <div class = "lcontent" id="rank">
				<h3 id="blueTitle">Statboard</h3>
                <h3 id="blueTitle">排名</h3>
                    <% set conn=Server.CreateObject("ADODB.Connection")
                    conn.Provider="Microsoft.Jet.OLEDB.4.0"
                    conn.Open server.mappath("/database/exam-score.mdb")
                    set rs = Server.CreateObject("ADODB.recordset")
                    sql="SELECT nickname,score FROM score "
                    sql= sql & "ORDER BY score DESC,timenum"
                    rs.Open sql, conn
                    %>

                    <table class="score">
                      <tr>
                        <th>Nickname</th><th>Score</th>
                      </tr>
                      <%
                       i=1
                       do until (rs.EOF Or i>10)%>
                        <tr>
                        <%for each x in rs.Fields%>
                          <td><%Response.Write(x.value)%></td>
                        <%
                        next
                        rs.MoveNext
                        i=i+1
                        %>
                        </tr>
                      <%loop
                      rs.close
                      conn.close%>
                    </table>

                    <p>Test:全员杯五高 </p><br>
                    <a href="/articles/exam-ranks.asp">More...</a>
			</div>
		</div>
	</div>
	<script src="/js/copyright.js"></script>
</body>
</html>