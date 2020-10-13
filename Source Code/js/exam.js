
function startTime(){
	let today = new Date();
	let h = today.getHours();
	let m = today.getMinutes();
	let s = today.getSeconds();
	let d = today.getDate();
	let mo = today.getMonth();
	let y = today.getFullYear();
	mo++;
	m=checkTime(m);
	s=checkTime(s);
	document.getElementById('Date').innerHTML =  mo+"/"+d +"/"+y;
	document.getElementById('Realtime-Time').innerHTML = h+":"+m+":"+s;
	if(h<12){
		document.getElementById('Greeting').innerHTML = "Good Morning";
	}else if(h<18){
		document.getElementById('Greeting').innerHTML = "Good Afternoon";
	}else{
		document.getElementById('Greeting').innerHTML = "Good Evening";
	}
	if(h>=0 && h<3 || h>=23){
		document.getElementById('greeting-tip').innerHTML = "Late at night, why not go to bed?";
	}else{
		document.getElementById('greeting-tip').innerHTML = "";
	}
	t=setTimeout(function(){startTime()},500);
}
function checkTime(i){
	if (i<10){
		i="0" + i;
	}
	return i;
}
function checkinput(){
	return window.event.keyCode !== 13;
}
function startExam(){
	var x=document.forms["qyb5g"]["name"].value;
	var y=document.forms["qyb5g"]["e-mail"].value;
	if (x==null || x==="")
	{
		alert("Data Invalid.\n请完整填写信息再开始测试.");
		return false;
	}
	let atpos=y.indexOf("@");
	let dotpos=y.lastIndexOf(".");
	var regEn = /[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im,
		regCn = /[·！#￥（——）：；“”‘、，|《。》？、【】[\]]/im;
	if(regEn.test(x) || regCn.test(x)){
		alert("Name Invalid.\n名字中不能包含特殊字符.");
		return false;
	}
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=y.length){
		alert("E-mail Invalid.\n电子邮件地址无效.");
		return false;
	}
	document.getElementById("form_question").style.display = "block";
	document.getElementById("examTimer").style.display = "block";
	document.getElementById("form_information").style.display = "none";
	startExamTime();
	return true;
}

let start = new Date();
let flag = true;
function startExamTime(){
	let now = new Date();

	if(flag && now - start > 10000) {
		start = new Date();
	}
	flag = false;
	document.getElementById("ExamTime").innerHTML = getTimeDif(now,start,"<br>");
	t=setTimeout(function(){startExamTime()},500);
}
function getTimeDif(nowt,startt,breaking){
	let dif = nowt - startt;
	let daydif = dif % (24 * 3600 * 1000);
	let hours = Math.floor(daydif/(3600*1000));
	daydif%=(3600*1000);
	let minutes = Math.floor( daydif/(60*1000));
	daydif %=(60*1000);
	let seconds=Math.round(daydif/1000);
	return hours+"h"+breaking+minutes+"min"+breaking+seconds+"s"+breaking;
}
function scoreCalcQyb5g(){
	let sum = 0;
	if(document.getElementById("q1a").checked) sum+=5;
	if(document.getElementById("q2c").checked) sum+=5;
	if(document.getElementById("q3d").checked) sum+=5;
	if(document.getElementById("q4d").checked) sum+=5;
	if(document.getElementById("q5d").checked) sum+=5;
	if(document.getElementById("q6b").checked) sum+=5;
	if(document.getElementById("q7b").checked) sum+=5;
	if(document.getElementById("q8d").checked) sum+=5;
	if(document.qyb5g.q13.value==="q13-6") sum+=5;
	if(document.qyb5g.q14.value==="q14-22") sum+=5;
	let actmp = 0;
	let watmp = 0;
	let tmp = 0;
	if(document.getElementById("q9a").checked) actmp++;
	if(document.getElementById("q9b").checked) watmp++;
	if(document.getElementById("q9c").checked) watmp++;
	if(document.getElementById("q9d").checked) actmp++;
	if(actmp===2) tmp = 5;
	if(actmp>0 &&actmp<2) tmp = 3;
	if(watmp !== 0) tmp = 0;
	sum+=tmp;
	actmp = 0;
	watmp = 0;
	tmp = 0;
	if(document.getElementById("q12a").checked) watmp++;
	if(document.getElementById("q12b").checked) actmp++;
	if(document.getElementById("q12c").checked) watmp++;
	if(document.getElementById("q12d").checked) watmp++;
	if(actmp===1) tmp = 5;
	if(actmp>0 &&actmp<1) tmp = 3;
	if(watmp !== 0) tmp = 0;
	sum+=tmp;
	actmp = 0;
	watmp = 0;
	tmp = 0;
	if(document.getElementById("q11a").checked) actmp++;
	if(document.getElementById("q11b").checked) actmp++;
	if(document.getElementById("q11c").checked) actmp++;
	if(document.getElementById("q11d").checked) actmp++;
	if(actmp===4) tmp = 5;
	if(actmp>0 &&actmp<4) tmp = 3;
	if(watmp !== 0) tmp = 0;
	sum+=tmp;
	actmp = 0;
	watmp = 0;
	tmp = 0;
	if(document.getElementById("q12a").checked) actmp++;
	if(document.getElementById("q12b").checked) actmp++;
	if(document.getElementById("q12c").checked) watmp++;
	if(document.getElementById("q12d").checked) actmp++;
	if(actmp===3) tmp = 5;
	if(actmp>0 &&actmp<3) tmp = 3;
	if(watmp !== 0) tmp = 0;
	sum+=tmp;
	let now = new Date();
	let time = getTimeDif(now,start," ");
	alert("Answer Accepted! 提交成功！\n"+"Total Time Cost: 总用时:\n"+getTimeDif(new Date(),start," ")+"\nYour Score: " + sum +"  "+"你的分数: "+ sum+"\nRedirecting... 即将跳转...");
	document.qyb5g.score.setAttribute("value",sum.toString());
	document.qyb5g.time.setAttribute("value",time);
	document.qyb5g.timenum.setAttribute("value",(now-start).toString());
	document.getElementById("qyb5g").submit();
	return true;
}