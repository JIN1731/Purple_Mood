<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>my page</title>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
}

/* div {
	border: 1px solid black;
}  */
body {
	overflow: hidden;
	overflow-y: auto;
	background-color: #03001e;
}

.container {
	background-color: white;
}

/* header */
.header {
	height: 100px;
	background-color: #03001e;
}

#logo, #titleimg {
	height: 100%;
}

#titleimg:hover {
	cursor: pointer;
}

@media ( max-width :767px) {
	#logo {
		height: 60%;
	}
	#titleimg {
		height: 100%;
	}
}

.searchbox {
	text-align: right;
}

.searchboxin {
	position: relative;
	top: 10%;
}

#searchtext {
	width: 90%;
}

.menuicon {
	text-align: center;
	color: white;
}

#menuicon:hover {
	cursor: pointer;
}

/* content */
.content {
	margin-top: 30px;
	margin-bottom: 30px;
	min-height: 500px;
}

.contentL {
	border-right: 1px solid black;
}

.contentrowT {
	margin-bottom: 50px;
}

.contentProfilebox {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	position: relative;
	left: 50%;
	transform: translateX(-50%);
	margin-bottom: 10px;
	margin-top: 30px;
}

#profileBtn {
	position: relative;
	left: 60%;
	bottom: 15%;
	background-color: white;
}

#profileimg1 {
	height: 100%;
}

.contentInfo {
	text-align: center;
	font-family: 'DungGeunMo';
	padding-bottom: 10px;
}

.contentInfo>a {
	color: black;
}

.contentAjax:hover {
	cursor: pointer;
}

/* footer */
.footer {
	padding-top: 50px;
	padding-bottom: 50px;
	background-color: #03001e;
	color: white;
}

.footerAtag {
	padding-top: 30px;
	padding-bottom: 20px;
}

.footerAtag>a {
	font-family: 'DungGeunMo';
	font-size: large;
}

.footerAtag>a:hover {
	color: #ec38bc;
}

.footerImpormation {
	font-size: smaller;
}

.footerIcon {
	padding-top: 10px;
	height: 50px;
	line-height: 50px;
}

.fa-brands:hover {
	cursor: pointer;
}

.snsIcon {
	padding-right: 20px;
	padding-left: 10px;
}

/* menu */
.offcanvas {
	height: 800px;
	background-color: #03001e;
}

.offcanvas-body {
	color: white;
	text-align: center;
}

.profilebox {
	width: 170px;
	height: 150px;
	overflow: hidden;
	position: relative;
	left: 30%;
	margin-bottom: 20px;
	margin-top: 30px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

#profileimg {
	height: 100%;
}

.profiletext {
	font-size: larger;
	margin-bottom: 10px;
	font-family: 'DungGeunMo';
}

#logoutBtn {
	font-size: larger;
	font-family: 'DungGeunMo';
}

.menulink {
	font-size: x-large;
	margin-bottom: 50px;
	margin-top: 50px;
	font-family: 'DungGeunMo';
}

.menulink:hover, #searchbtn:hover {
	color: #c4c4c4;
}

#colsebtn {
	border: none;
	color: white;
	background-color: #03001e;
}

a {
	color: white;
	text-decoration: none;
}

button {
	border: none;
	border-radius: 5px;
}

/* �ۼ���� */
.commentBycomment {
	padding-top: 8px;
	margin-left: 20px;
	border-bottom: 1px solid gray;
	padding-bottom: 15px;
}

.commentBycomment>div {
	color: black;
}

.commentTitle, .commentDate {
	font-size: 11px;
	color: gray;
}

/* �ۼ��Խñ� */
.titleBoard {
	margin-bottom: 30px;
	padding-left: 10px;
	font-family: 'DungGeunMo';
	text-align: left;
}

.Boardtitle {
	text-align: center;
}

.boardByboard {
	padding-top: 8px;
	margin-left: 20px;
	border-bottom: 1px solid gray;
	padding-bottom: 15px;
}

.boardByboard>div {
	color: black;
}

#boardbox>a:hover {
	text-decoration: underline;
	text-decoration-color: gray;
}

.boardView, .boardDate {
	text-align: center;
}

@font-face {
	font-family: 'DungGeunMo';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>

<body>
	<div class="container w-xl">
		<div class="row header">
			<div class="col-12 col-md-7 col-lg-8" id="logo">
				<img src="/img/title.png" id="titleimg">
			</div>
			<div class="col-8 col-md-4 col-lg-3 searchbox">
				<input type="text" class="searchboxin" id="searchtext"
					onkeyup="enterkey()" name="searchtext" /> <a
					href="/search.content?searchtext=" +searchtext><i
					class="fa-solid fa-magnifying-glass searchboxin" id="searchbtn"></i></a>
			</div>
			<script>
				$("#titleimg").on("click", function() {
					location.href = "/main";
				})
				function enterkey() { //�˻�â�� ���콺 �ø� �� ���� ������ �ٷ� �Ѿ�� ����� �Լ�
					if (window.event.keyCode == 13) {
						location.href = "/search.content?searchtext="
								+ $("#searchtext").val();
					}
				}
			</script>
			<div class="col-4 col-md-1 col-lg-1 menuicon">
				<i class="fas fa-bars fa-2x" id="menuicon"
					data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasWithBothOptions"
					aria-controls="offcanvasWithBothOptions"></i>
			</div>
		</div>

		<div class="row content">
			<div class="col-12 col-md-4 col-lg-3 col-xl-2 contentL">
				<div class="row contentrowT">
					<div class="col-12">
						<div class="contentProfilebox" id="Btn"
							style="background: #BDBDBD;">
							<img src="/img/logo2.png" id="profileimg1">
						</div>
						<!-- <button type="button" id="profileBtn">
							<i class="fa-solid fa-pen"></i>
						</button> -->
					</div>
					<div class="col-12 fs-5 contentInfo">${loginNickname }</div>
				</div>
				<div class="row contentrowB">
					<div class="col-12 fs-4 contentInfo contentAjax">
						<a href="/member/mypageMemInfo.jsp" id="myinfo">�� ����</a>
					</div>
					<div class="col-12 fs-4  contentInfo contentAjax">
						<a id="myboard">�ۼ���</a>
					</div>
					<div class="col-12 fs-4  contentInfo contentAjax">
						<a id="mycomment">�ۼ����</a>
					</div>
					<script>
						//�Խñ� ���
						$("#myboard")
								.on(
										"click",
										function() {
											$("#boardbox").empty();
											$
													.ajax(
															{
																url : "/selectMypageBoard.member",
																dataType : "json"
															})
													.done(
															function(data) {
																console
																		.log("receive����:"
																				+ data);
																console
																		.log("receive����:"
																				+ typeof data);
																console
																		.log("receive����:"
																				+ data.length);
																if (data != null) {
																	<!--����Ʈ�ҷ�����-->
																	let r = '';
																	r += "<div class='col-10 fs-5 titleBoard'>�ۼ��Խñ�</div>";
																	r += "<div class='row Boardtitle'>"
																	r += "<div class='col-6'>����</div>";
																	r += "<div class='col-4'>�ۼ��ð�</div>";
																	r += "<div class='col-2'>��ȸ��</div>";
																	r += "</div>"
																	for (i = 0; i < data.length; i++) {
																		r += "<a href='/selectBoardContents.board?b_seq="
																				+ data[i].b_seq
																				+ "'><div class='row boardByboard'>";
																		r += "<div class='col-6 boardOnTitle'>"
																				+ data[i].b_title
																				+ "</div>";
																		r += "<div class='col-4 boardDate'>"
																				+ data[i].b_write_date
																				+ "</div>";
																		r += "<div class='col-2 boardView'>"
																				+ data[i].b_view_count
																				+ "</div>";
																		r += "</div></a>";
																	}
																	$(
																			"#boardbox")
																			.append(
																					r);
																}
															});
										})
						//������
						$("#mycomment")
								.on(
										"click",
										function() {
											$("#boardbox").empty();
											$
													.ajax(
															{
																url : "/selectMypageComment.member",
																dataType : "json"
															})
													.done(
															function(data) {
																console
																		.log("receive����:"
																				+ data);
																console
																		.log("receive����:"
																				+ typeof data);
																console
																		.log("receive����:"
																				+ data.length);
																if (data != null) {
																	<!--����Ʈ�ҷ�����-->
																	let r = '';
																	r += "<div class='col-10 fs-5 titleBoard'>�ۼ����</div>"
																	for (i = 0; i < data.length; i++) {
																		r += "<a href='/selectBoardContents.board?b_seq="
																				+ data[i].b_seq
																				+ "'><div class='row commentBycomment'>";
																		r += "<div class='col-12  comment'>"
																				+ data[i].bcm_content
																				+ "</div>";
																		r += "<div class='col-12 commentDate'>"
																				+ data[i].bcm_write_date
																				+ "</div>";
																		r += "<div class='col-12  commentTitle'>"
																				+ data[i].b_title
																				+ "</div>";
																		r += "</div></a>";
																	}
																	$(
																			"#boardbox")
																			.append(
																					r);
																}
															});
										})
					</script>
				</div>
			</div>
			<div class="col-12 col-md-8 col-lg-9 col-xl-10">
				<!-- �ۼ� �Խñ� -->
				<div class="row">
					<div class="col-11 boardbox" id="boardbox"></div>
				</div>
			</div>
		</div>
		<div class="row footer">
			<div class="col-12 footerAtag">
				<a href="#">ȸ��Ұ�</a> &nbsp&nbsp <a href="#">������</a> &nbsp&nbsp <a
					href="#">�̿���</a> &nbsp&nbsp <a href="#">�������� ó����ħ</a>
			</div>
			<div class="col-12 footerImpormation">(��)���ù��� | ��ǥ�̻� : ������</div>
			<div class="col-12 footerImpormation">�̸��� �ּ� :
				purpleMood@purplemood.com</div>
			<div class="col-12 footerImpormation">����ڵ�Ϲ�ȣ : 000-00-000</div>
			<div class="col-12 footerImpormation">����Ǹž� �Ű��ȣ : ��
				2022-�����߱�-301eȣ</div>
			<div class="col-12 footerImpormation">�ּ� : ���ѹα� ����Ư���� �߱� ���빮��
				120, ���Ϻ��� 3��</div>
			<div class="col-12 footerIcon">
				<span class="snsIcon"><i
					class="fa-brands fa-instagram fa-2xl"></i></span> <span class="snsIcon"><i
					class="fa-brands fa-twitter fa-2xl"></i></span> <span class="snsIcon">
					<i class="fa-brands fa-facebook fa-2xl"></i>
				</span>
			</div>

		</div>

		<div class="offcanvas offcanvas-end" data-bs-scroll="true"
			tabindex="-1" id="offcanvasWithBothOptions"
			aria-labelledby="offcanvasWithBothOptionsLabel">
			<div class="offcanvas-header">
				<button type="button" data-bs-dismiss="offcanvas" id="colsebtn"
					aria-label="Close">
					<i class="fa-solid fa-xmark fa-xl"></i>
				</button>
			</div>
			<div class="offcanvas-body">
				<div class="profilebox" id="Btn" style="background: #BDBDBD;">
					<img src="/img/logo.png" id="profileimg">
				</div>
				<div class="profiletext">${loginNickname }</div>
				<div class="profiletext">
					<a href="/member/mypage.jsp">
						<button>����������</button>
					</a>
				</div>
				<a href="/boardList.board?cpage=1">
					<div class="menulink">��ȭ ��� �Խ���</div>
				</a> <a href="/fboardList.fboard?cpage=1">
					<div class="menulink">�����Խ���</div>
				</a> <a href="/noticeList.notice?cpage=1">
					<div class="menulink">��������</div>
				</a>
				<button type="button" id="logoutBtn">�α׾ƿ�</button>
			</div>
			<script>
				$("#logoutBtn").on("click", function() {
					location.href = "/logout.member";
				})
				/* $("#profileBtn").on(
				    "click",
				    function () {
				        window.open("/profile.jsp", "",
				            "width=400,height=300");
				    }) */
			</script>
		</div>


	</div>
</body>

</html>