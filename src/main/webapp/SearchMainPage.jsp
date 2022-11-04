<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�˻� ���� ������</title>
 <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
<style>
    .container{border:1px solid black; margin:auto;}
    #header{background-color:#9A0F98;}
    .searchbar{background-color: grey;}
    #searchinput{width:100%};
    #searchbtn{width:100%};
    #logo{color: white; }
</style>
<script>
  $("#searchbtn").on("click",function(){
  //  jsp �����ؼ� ��񿡼� �� ����ؾ���.
    let searchrword=$("#searchinput").value;
  
  })
</script>
<body>


<div class="container text-center"> 
  <!--form���� �˻���� �Ѱ��ֱ�-->
  <form action="/search.content">
        <div class="row" id="header">
          <div class="col-sm-12">
                <div id="logo">���ù���(�ΰ� �̹��� �߰�)</div>
          </div>
        </div>

        <div class="row" id="searchbar">
          <div class="col-2 col-md-2 col-lg-2">
            <span>�˻� ������</span>
          </div>
          <div class="col-8 col-md-8 col-lg-8">
            <input type="text" id="searchinput" name="searchInput"  placeholder="�˻�� �Է����ּ���.">
          </div>
          <div class="col-2 col-md-2 col-lg-2">
            <button class="col" id="searchbtn">�˻�</button>
          </div>

  </form>

  <!--�˻� �� ���� ������ -->
  <c:choose> 
    <c:when test="${not empty list}">
      <c:forEach var="Like" items="mv_list">
        <c:forEach var="Like" items="mv_list">
            <div class="row" id="movie_bar">
               <div> ��ȭ ����Ʈ</div>
              <div class="row">
              <div class="col-6 col-sm-4 col-md-2"><a href="/detail.content?seq=${i.seq }"></a><img src="${Like.mv_img}">���ƿ�� ��ȭ ������ ��� ����</div>
              <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
              <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
              <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
              <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
              <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
              </div>
            </div>
          </c:forEach>
          </c:when>
    </c:choose> 

    <!--�˻� ��� ���-->
        <c:choose> 
          <c:when test="${not empty list}">
            <c:forEach var="Like" items="mv_list">
            <div class="row" id="drama_bar">
               <div>��� --js �̿��Ͽ� �� ���)</div>
                <div class="row">
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                </div>
              </div>
            <!-- </div> ? -->
          </c:forEach>
        </c:when>
        </c:choose>

        <c:choose>
          <c:when test="${not empty list}">
            <c:forEach var="search" items="searchResult">
                <div class="row" id="movie_bar">
                  <div> ��ȭ ����Ʈ</div>
                 <div class="row">
                 <div class="col-6 col-sm-4 col-md-2"><img src="${Like.mv_img}">���ƿ�� ��ȭ ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��ȭ ������ ��� ����</div>
                 </div>
               </div>
            </c:forEach>
          </c:when>
          <c:otherwise>
            <div>�˻� ����� �����ϴ�.</div>
          </c:otherwise>
        </c:choose>

        <c:choose>
          <c:when test="${not empty list}">
            <c:forEach var="search" items="searchResult">
              <div class="row" id="drama_bar">
                <div>��� --js �̿��Ͽ� �� ���)</div>
                 <div class="row">
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 <div class="col-6 col-sm-4 col-md-2"><img src="">��� ������ ��� ����</div>
                 </div>
               </div>
            </c:forEach>
          </c:when>
          <c:otherwise>
            <div>�˻� ����� �����ϴ�.</div>
          </c:otherwise>
        </c:choose>


</div>
</body>
</html>