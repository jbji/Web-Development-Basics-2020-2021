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
		<h1>Online Test System</h1>
	</div>
	<div class="article">
		<div class = "right">
			<div class="content">
				<h2 class="content">2020年第五届全员杯网络数学竞赛</h2>
				<h1 class="content"><b>高中组 试卷一（高考模拟卷）</b><br>选择题/填空题部分</h1>
				<p><b>注意事项：</b><br>
					本试卷是对2020年1月30日的第五届全员杯网络数学竞赛的部分重现，完整试卷详见试题来源。<br>
					本测试不限时，但是会记录您的做题时间，排名以分数为第一关键字，用时为第二关键字排序。<br>
					数学公式的加载可能需要一些时间，如果加载缓慢，请您耐心等候。<br>
					<b>命题</b>：全员杯命题组&nbsp;&nbsp;&nbsp;&nbsp;
					<b>QQ群群号</b>：105314727<br><br>
				</p>
				<div class="exam" id="exam-qyb5g">
					<form name="qyb5g" onsubmit="return scoreCalcQyb5g()" onkeypress="return checkinput()" action = "exam-submit.asp" method="post">
						<div class="form_information" id = "form_information">
							Before you starts, please type in your Information:<br>
							开始之前，请先输入你的基本信息:<br>
							<div class="form_information_block">
								<label for="name">Nickname (昵称):</label>
								<input type="text" class = "in" id="name" name="name" placeholder="Your nickname.. 你的昵称">
							</div>
							<div class="form_information_block">
								<label for="e-mail">E-mail (邮箱):<br></label>
								<input type="text" class = "in" id="e-mail" name="e-mail" placeholder="Your e-mail.. 你的邮箱">
							</div>
							<input name="score" type = "hidden"  value="0">
							<input name="time" type = "hidden"  value="0">
							<input name="timenum" type="hidden" value="0">
							<br>
							<input type="button" class="button" onclick="startExam()" value="开始答题"><br>
						</div>
						<div class = "form_question" id = "form_question">
							<p>一、单项选择题：本题共8 小题，每小题5分，共40分。在每小题给出的四个选项中，只有一项是符合题目要求的。</p>
							<br class="qbreak">
							1.设$k\in\mathbb{N}^{*}$,若$(\frac{2k}{x}+\frac{x}{2k})^{2k}$的常数项为$6$，则$k=$<br>

							<label><input type="radio" name="q1" id="q1a">$A. 2$</label><br>
							<label><input type="radio" name="q1" id="q1b">$B. 3$</label><br>
							<label><input type="radio" name="q1" id="q1c">$C. 4$</label><br>
							<label><input type="radio" name="q1" id="q1d">$D. 5$</label><br>
							<br class="qbreak">
							2.复数的用途之一是用来表示平面几何向量.如图所示，向量 $\alpha = (r\cos{\theta},r\sin{\theta})$在复数域$\mathbb{C}$ 上允许被写作复数$\alpha = r(\cos{\theta}+i\sin{\theta})=re^{i\theta}$（欧拉公式，其中 $r\in\mathbb{R}$ 是向量的模，$\theta$是向量与实轴正方向的夹角）于是向量间的矢量加法就可以用复数间的代数加法表示，这样的简洁表示允许平面几何向量的快速运算.<br>
							<img class = "exam" src="./img/q2.png">
							根据以上材料和上图所示，$\sum_{k=0}^{5}e^{ik\pi/3}$的值为</br>
							<label><input type="radio" name="q2" id="q2a">$A. \sqrt{3}i$</label><br>
							<label><input type="radio" name="q2" id="q2b">$B. e^{2\pi i/3}$</label><br>
							<label><input type="radio" name="q2" id="q2c">$C. 0$</label><br>
							<label><input type="radio" name="q2" id="q2d">$D. 1$</label><br>
							<br class="qbreak">

							3.设$x,y>0$，则$\frac{1}{1+\sin{xy}}+\frac{\sin^{2}{x}+\sin^{2}{y}}{1+xy}$的取值范围是
							<br>
							<label><input type="radio" name="q3" id="q3a">$A. [0,+\infty)$</label><br>
							<label><input type="radio" name="q3" id="q3b">$B. (1,+\infty)$</label><br>
							<label><input type="radio" name="q3" id="q3c">$C. [1/2,+\infty)$</label><br>
							<label><input type="radio" name="q3" id="q3d">$D. (1/2,+\infty)$</label><br>
							<br class="qbreak">

							4.建盏，茶具，黑瓷及宋茗文之为物.、制口大底小、形如漏斗、少为实足。建盏之烧难成也，其烧之难，在胎土、釉水，在温域、氛围.建盏之上有兔毫、鹧鸪、曜变为繁文，徽宗所著《大观茶论》乃有“盏色贵青黑，玉毫条达者为上”之说.釉易成也，温域广，盖$1250 ~ 1350 ^{o}C$.而兔毫难，其与今之所谓曰“烧成气氛”、“冷却制度”所系矣.
							一种瓷釉材料要想生成兔毫釉，需要被加热至刚好可以液态流动.现有瓷釉试样在高温下从塑性流动变为粘性流动的温度点$HKP$，和从粘性流动变为液态流动的温度点$FP$的部分实验结果（即温度与粘度过程趋势图）如图表所示.
							<br>
							<img class = "exam" src="./img/q4.png">
							下列条件下，最可能成功烧制兔毫釉建盏的是
							<br>
							<label><input type="radio" name="q4" id="q4a">$A. T02；N_{2}氛围；1285^{o}C；止火后快冷；$</label><br>
							<label><input type="radio" name="q4" id="q4b">$B. TC22；He氛围；1250^{o}C；止火后慢冷；$</label><br>
							<label><input type="radio" name="q4" id="q4c">$C. TB4；He氛围；1300^{o}C；自然冷却；$</label><br>
							<label><input type="radio" name="q4" id="q4d">$D. TC9；N2氛围；1360^{o}C；自然冷却；$</label><br>
							<br class="qbreak">

							5.在直三棱柱 $DEF-D'E'F'$ 中，$DF=EF=DD'=2$ 且$DF\perp EF$ ，点 $MM$ 是 $𝐹𝐹′$ 中点，则 $𝐸′$ 到平面 $𝐸MD'$ 的距离为
							<img class = "exam-l" src="./img/q5.png">
							<br>
							<label><input type="radio" name="q5" id="q5a">$A. \sqrt{2}/2$</label><br>
							<label><input type="radio" name="q5" id="q5b">$B. \sqrt{6}/2$</label><br>
							<label><input type="radio" name="q5" id="q5c">$C. \sqrt{2}$</label><br>
							<label><input type="radio" name="q5" id="q5d">$D. 以上都不对$</label><br>
							<br class="qbreak">

							6. $5$ 个平面向量的模长分别是 $1, 2, 3, 4, 5$，它们要么在 $𝑥$ 轴和 $𝑦$ 轴的正半轴上，要么在
							第一象限内，则这五个向量之和的模长的最小值为
							<br>
							<label><input type="radio" name="q6" id="q6a">$A. 15\sqrt{15}/2$<br></label>
							<label><input type="radio" name="q6" id="q6b">$B. \sqrt{113}$<br></label>
							<label><input type="radio" name="q6" id="q6c">$C. 2\sqrt{13}$<br></label>
							<label><input type="radio" name="q6" id="q6d">$D. 5\sqrt{5}$<br></label>
							<br class="qbreak">

							7.某天 (第$0$天)，有$1200$万人口、与世隔绝的大西洲出现了$10$例瘟疫病毒携带者.携 带者当天不发病、不传染，从第二天 (含) 开始发病并具有传染性，此时他的预期寿 命只剩下$7$天，这七天内每人每天 (含死亡那天) 传染且仅传染$1$位非携带者，被传 染后的非携带者成为当天的病毒携带者，以此类推.忽略人口出生及自然死亡.下列 说法正确的是
							<br>
							<label><input type="radio" name="q7" id="q7a">$A. 存活的携带者和发病者总数随天数变化图像：$<br> <img class="exam" src="./img/q7a.png"></label>
							<label><input type="radio" name="q7" id="q7b">$B. 存活的携带者和发病者总数随天数变化图像：$<br> <img class="exam" src="./img/q7b.png"></label>
							<label><input type="radio" name="q7" id="q7c">$C. 第18 天，每天的新患病人数达到顶峰$</label><br>
							<label><input type="radio" name="q7" id="q7d">$D. 第21 天，每天的新患病人数达到顶峰$</label><br>
							<br class="qbreak">

							8. 给定双曲线 $Γ$ 和定点 $𝑃$,下列说法中正确的是:
							<br>
							<label><input type="radio" name="q8" id="q8a">$A. $若过 $𝑃$ 的直线都不与 $\Gamma$ 相切，则它们都与 $\Gamma$ 有公共点</label><br>
							<label><input type="radio" name="q8" id="q8b">$B. $若过 $𝑃$ 的直线中与 $\Gamma$ 只有一个公共点的少于三条，则过 $𝑃$ 的直线都不与 $\Gamma$ 相 切</label><br>
							<label><input type="radio" name="q8" id="q8c">$C. $若过 $𝑃$ 的直线中有三条与 $\Gamma$ 只有一个公共点，则存在过 $𝑃$ 的直线与 $\Gamma$ 无公共 点</label><br>
							<label><input type="radio" name="q8" id="q8d">$D. $过 $𝑃$ 的直线中，不可能只有一条与 $\Gamma$ 只有一个公共点</label><br>
							<br class="qbreak">



							<br class="qbreak">
							<p>二、不定项选择题：本题共4 小题，每小题5 分，共20分。在每小题给出的选项中，有一项或多项符合题目要求。全部选对的得5 分，部分选对的得3 分，有选错的得0 分。</p>
							<br class="qbreak">

							9.已知
							$$𝑈 = \left\{(𝑥, 𝑦, 𝑧, 𝑤)│𝑥 < 0, 𝑥, 𝑦, 𝑧,𝑤 ∈ \mathbb{R}\right\}$$
							$$P = \left\{(𝑥, 𝑦, 𝑧, 𝑤)│x+y+z=0, 𝑥, 𝑦, 𝑧,𝑤 ∈ \mathbb{R}\right\}$$
							$$Q = \left\{(𝑥, 𝑦, 𝑧, 𝑤)│x+y+2z=0, 𝑥, 𝑦, 𝑧,𝑤 ∈ \mathbb{R}\right\}$$
							$$R = \left\{(𝑥, 𝑦, 𝑧, 𝑤)│x-y-2z+2w=0, 𝑥, 𝑦, 𝑧,𝑤 ∈ \mathbb{R}\right\}$$
							$$S = \left\{(𝑥, 𝑦, 𝑧, 𝑤)│2x+y+z+w=0, 𝑥, 𝑦, 𝑧,𝑤 ∈ \mathbb{R}\right\}$$
							请选择下列元素中属于集合$\complement_{U}((P\cap Q)\cup(R\cap S))$的
							<br>
							<label><input type="checkbox" name="q9" id="q9a">$A. (-5/3,-1,2,5/3)$</label><br>
							<label><input type="checkbox" name="q9" id="q9b">$B. (-2,2/3,1,7/3)$</label><br>
							<label><input type="checkbox" name="q9" id="q9c">$C. (4/7,10/7,3/7,-5/7)$</label><br>
							<label><input type="checkbox" name="q9" id="q9d">$D. (-1,-1/3,1,1/3)$</label><br>
							<br class="qbreak">
							10.对于任意四面体，下列说法一定正确的：
							<br>
							<label><input type="checkbox" name="q10" id="q10a">$A. $四条高交于同一点<br></label>
							<label><input type="checkbox" name="q10" id="q10b">$B. $内部恰存在一点到各面距离均相等<br></label>
							<label><input type="checkbox" name="q10" id="q10c">$C. $内部恰存在一点到各顶点距离相等<br></label>
							<label><input type="checkbox" name="q10" id="q10d">$D. $外部恰存在四点到各面距离均相等<br></label>
							<br class="qbreak">

							11.设
							$$f_{0}(x)=\frac{1}{1+e^{-x}},f_{n}(x)=f(f_{n-1}(x)),n\in\mathbb{N}^{*}$$
							则下列说法正确的
							<br>
							<label><input type="checkbox" name="q11" id="q11a">$A. $存在唯一的$x_{0}>0$，使得对于给定的正整数$n,f_{n}(x_{0})=x_{0}$<br></label>
							<label><input type="checkbox" name="q11" id="q11b">$B. \frac{1}{f_{n}(x)-1}>\frac{1}{f_{0}(x)-1}-n(n\in\mathbb{N}^{*})$<br></label>
							<label><input type="checkbox" name="q11" id="q11c">$C. f_{n}'(x)\leq\frac{1}{4^{n}}f_{0}'(x)(n\in\mathbb{N}^{*})$<br></label>
							<label><input type="checkbox" name="q11" id="q11d">$D. $若$x_{0}>0,n\in\mathbb{N}^{*},$则$f_{n}'(x_{0})< f_{n-1}(x_{0})f_{n-2}(x_{0})...f_{0}(x_{0})$<br></label>
							<br class="qbreak">
							12.不减的非负实数列$\left\{a_{n}\right\}$满足：对任意$n\geq3,n\in\mathbb{N}^{*},$ $$a_{n+1}^{2}+4a_{n-1}a_{n-2}+4a_{b-1}a_{n} = a_{n-2}^{2}+4a_{n-1}^{2}+2a_{n}a_{n-2}+2a_{n}a_{n+2}$$
							下列选项正确的
							<br>
							<label><input type="checkbox" name="q12" id="q12a">$A. $可以挑出适当的$a_{1}a_{2}a_{3}$，使$\left\{a_{n}\right\}_{n\geq1}$严格递增<br></label>
							<label><input type="checkbox" name="q12" id="q12b">$B. $既可以挑出适当的$a_{1}a_{2}a_{3}$，使$\left\{a_{n}\right\}_{n\geq1}$中可以去除无穷多项排列成等差数列，也可以挑出适当的$a_{1}a_{2}a_{3}$，使任意$\left\{a_{n}\right\}_{n\geq1}$的无穷子序列都不是等差数列<br></label>
							<label><input type="checkbox" name="q12" id="q12c">$C. $若$a_{1}=2,a_{2}=2021,a_{3}=4038$，则$a_{2020}=1021446$<br></label>
							<label><input type="checkbox" name="q12" id="q12d">$D. $若$\left\{a_{n}\right\}_{n\geq1}$中存在连续三项相等，则$\left\{a_{n}\right\}_{n\geq1}$为常数列<br></label>
							<br class="qbreak">
							<br>
							三、填空题：本题共2小题，每小题5分，共10分。
							<br>

							<br class="qbreak">
							13.设$f(x)=t\cos{x}+\sin{x}(t是常数)$，方程$f(x)-f'(x)=0$在$[-2020\pi,2020\pi]$上的解是
							<select name="q13">
								<option value="q13-11">4035</option>
								<option value="q13-22">4036</option>
								<option value="q13-33">4037</option>
								<option value="q13-44">4038</option>
								<option value="q13-55">4039</option>
								<option value="q13-66">4040</option>
								<option value="q13-77">4041</option>
								<option value="q13-88">4042</option>
								<option value="q13-99">4043</option>
								<option value="q13-101">4044</option>
								<option value="q13-1">4035或4036</option>
								<option value="q13-2">4036或4037</option>
								<option value="q13-3">4037或4038</option>
								<option value="q13-4">4038或4039</option>
								<option value="q13-5">4039或4040</option>
								<option value="q13-6">4040或4041</option>
								<option value="q13-7">4041或4042</option>
								<option value="q13-8">4042或4043</option>
								<option value="q13-9">4043或4044</option>
								<option value="q13-10">4044或4045</option>
							</select>
							<br>
							<br class="qbreak">
							14.椭圆$\Gamma:\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}=1(a>b>0)$，其左右焦点分别是$F_{1},F_{2}$，$P$在$\Gamma$上且
							$\angle F_{1}PF_{2}=90^{o}$，直线直线 $𝐹_{1}𝐹_{2}$ 上分别有两点 $𝑄,𝑅$ ($𝑄$在线段$𝐹_{1}𝐹_{1}$上) 满足 $RP$ 与
							$\Gamma$ 相切，$PQ$ 平分 $\angle 𝐹_{1}𝑃𝐹_{2}$,由椭圆的光学性质可得 $𝑃𝑄 ⊥ 𝑅P$.则以 $𝐹_{1}$, $𝐹_{1}$ 为焦点
							且与 $PQ$ 相切的双曲线的离心率的平方为
							<select name="q14">
								<option value="q14-11">$1+√{2}$</option>
								<option value="q14-22">$2+√{2}$</option>
								<option value="q14-33">$3+√{2}$</option>
								<option value="q14-44">$1+√{3}$</option>
								<option value="q14-55">$2+√{3}$</option>
								<option value="q14-66">$3+√{3}$</option>
								<option value="q14-77">$4+√{3}$</option>
								<option value="q14-88">$1+√{5}$</option>
								<option value="q14-99">$2+√{5}$</option>
								<option value="q14-101">$3+√{5}$</option>
								<option value="q14-1">$4+√{5}$</option>
								<option value="q14-2">$5+√{5}$</option>
								<option value="q14-3">$6+√{5}$</option>
								<option value="q14-4">$7+√{5}$</option>
								<option value="q14-5">$1+√{7}$</option>
								<option value="q14-6">$3+√{7}$</option>
								<option value="q14-7">$5+√{7}$</option>
								<option value="q14-8">$7+√{7}$</option>
								<option value="q14-9">$9+√{7}$</option>
								<option value="q14-10">$11+√{7}$</option>
							</select>
							<br class="qbreak">
							<br>
							<input type="submit" value="提交">
						</div>
					</form>
				</div>

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
	</div>
	<script src="/js/copyright.js"></script>
</body>
</html>