<!DOCTYPE html>
<html lang="en">
<head>
    <%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Online Test - jbji's Zone</title>
	<link rel="stylesheet" type="text/css" href="../css/common-navicp-style.css">
	<link rel="stylesheet" type="text/css" href="../css/article-style.css">
	<link rel="stylesheet" type="text/css" href="../css/exam.css">
    <script type="text/javascript" src="../js/exam.js"></script>
</head>

<body  onload="startTime()">
	<script src="/js/navi.js"></script>

	<div class="banner">
		<h1>Online Test System - Result</h1>
	</div>
	<div class="article">
		<div class = "left">
			<div class = "lcontent">
				<p id="TimeCaption">CurrentTime (Local)<br>当前时间(本地)</p>
				<div id="Date"></div>
				<div id="Realtime-Time"></div>
				<div id="Greeting"></div>
				<div id="greeting-tip"></div>
			</div>
			<div class = "lcontent">
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
                      <%dim i
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
        <div class = "right" id="qybctner">
            <div class="content" id="qybScore">
                <h1 class="content">成绩 - 全员杯五高重现</h1>
                <p><b>命题</b>：全员杯命题组&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <b>QQ群群号</b>：105314727</p><br><br>
                <h3 class="content">Basics 基本信息</h3>
                <table>
                    <tr> <td>Nickname</td><td>&nbsp;&nbsp;<%response.write(request.form("name"))%></td></tr>
                    <tr> <td>E-mail</td><td>&nbsp;&nbsp;<%response.write(request.form("e-mail"))%></td></tr>
                    <tr> <td>Time Cost</td><td>&nbsp;&nbsp;<%response.write(request.form("time"))%></td></tr>
                </table>
                <h3 class="content">Score 成绩信息</h3>
                <table>
                    <tr> <td>Score</td><td><%response.write(request.form("score"))%></td></tr>
                    <tr> <td>Saved</td>
                    <td>
                    <% set conn=Server.CreateObject("ADODB.Connection")
                    conn.Provider="Microsoft.Jet.OLEDB.4.0"
                    conn.Open server.mappath("/database/exam-score.mdb")

                    sql="INSERT INTO score (nickname,email,score,timenum,submittime,timestring)"
                    sql=sql & " VALUES "
                    sql=sql & "('" & Request.Form("name") & "',"
                    sql=sql & "'" & Request.Form("e-mail") & "',"
                    sql=sql & "'" & Request.Form("score") & "',"
                    sql=sql & "'" & Request.Form("timenum") & "',"
                    sql=sql & "'" & now() & "',"
                    sql=sql & "'" & Request.Form("time") & "')"

                    on error resume next
                    conn.Execute sql,recaffected
                    if err<>0 then
                      Response.Write("No")
                    else
                      Response.Write("Yes")
                    end if
                    conn.close
                    %>
                    </td></tr>
                    <tr>
                    <td>Submit Time</td>
                    <td><%Response.Write(now())%></td>
                    </tr>
                </table>
                <h3 class="content">History 历史最佳 (E-mail)</h3>
                    <% set conn=Server.CreateObject("ADODB.Connection")
                    conn.Provider="Microsoft.Jet.OLEDB.4.0"
                    conn.Open server.mappath("/database/exam-score.mdb")
                    set rs = Server.CreateObject("ADODB.recordset")
                    sql="SELECT score,timestring,submittime FROM score "
                    sql= sql & "WHERE email='" & request.form("e-mail") & "' "
                    sql= sql & "ORDER BY score DESC,timenum"
                    rs.Open sql, conn
                    %>
                    <table>
                      <tr>
                        <th>Score 分数</th> <th>Time Cost做题耗时</th> <th>Submit 提交时间</th>
                      </tr>
                      <%
                       i=1
                       do until (rs.EOF Or i>5)%>
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

	</div>
	<script src="/js/copyright.js"></script>
</body>
</html>