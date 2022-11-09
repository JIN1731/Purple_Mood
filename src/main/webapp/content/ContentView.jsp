<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ �� ������</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<style>
*{ box-sizing:border-box; color:grey;}
.container-fluid{background-color:#03001e;}
/* background:linear-gradient(#03001e,50%,#7303c0,#ec38bc,#fdeff9);  border:1px solid grey;*/
#logo{background-color: #7303c0,; height:150px;}
.poster{height:fit-content;}
.poster>img{max-height: 350px;}
.ott_icon{max-height: 50px;}
.ott_icon>img{max-height: 50px;}
#review_textbox{height:200px;}
.rv_input{width:90%;}
#rv_inputbox{width:100%;}
</style>
<body>
  
    <div class="container-fluid text-center">
      <div class="row"> 
        <div class="col-12" id="logo">
            <img src="">���ù��� �ΰ� �̹���</div>
        </div>
           <div class="row">
            <div class="poster col-sm-3 p-2">
              <img src="������_������.jpeg" class="img-fluid" alt="...">
              <div id="like_icon ">
              <i class="bi bi-hand-thumbs-up">12,425(js)</i>
              <!-- <i class="bi bi-hand-thumbs-up-fill">Ŭ���̺�Ʈ</i> -->
            </div>
            </div>
    
          <div class="col-sm-9">
        <c:choose>
          <c:when test="${dr_seq == null and mv_seq != null}"> 
            <div class="row">
              <div class="title col-12 col-sm-7">
                <p class="fs-3">${mv_title}������(ARCANE)</p>
              </div>
              <div class="ott_icon col-12 col-sm-5">
              <img src="���ø��� ��ü �ΰ�_�������.png" class="img-fluid" alt="...">
              </div>

              <div class="info col-12">
                <div><span>�帣:</span> <span>${mv_genre} ��Ÿ��, �׼�, ��庥��</span></div>
                <div><span>��ó⵵:</span> <span>${mv_date} 2021</span></div> 
                <div><span>����(imdb ����):</span> <span>${mv_score} 9.4</span></div>
              </div>
              <div class="summary col-12">
                <br>
                <p>�ٰŸ�</p> 
                 <p>${mv_summary} ���� ���� ��Ʈ������ �� �Ʒ��� ���� ���� �ڿ�. <br>
                  �ؽ��ϰ� �ݸ��ϴ� �� �ֵ��� ���ÿ���, �� �ڸŰ� ���� �ݴ��� ���� �ο�⿡ �̸���. 
                  <br> ���� ����� �ų��� �浹 �ӿ��� ������ ���۵ȴ�.</p> </div>
              </div>
           </c:when>
           <c:otherwise>
            <div class="row">

              <div class="title col-12 col-sm-7">
                <p class="fs-3">${dr_title}������(ARCANE)</p>
              </div>
              <div class="ott_icon col-12 col-sm-5">
              <img src="���ø��� ��ü �ΰ�_�������.png" class="img-fluid" alt="...">
              </div>

              <div class="info col-12">
                <div><span>�帣:</span> <span>${dr_genre} ��Ÿ��, �׼�, ��庥��</span></div>
                <div><span>��ó⵵:</span> <span>${dr_date} 2021</span></div> 
                <div><span>����(imdb ����):</span> <span>${dr_score} 9.4</span></div>
              </div>
              <div class="summary col-12">
                <br>
                <p>�ٰŸ�</p> 
                 <p>${dr_summary}���� ���� ��Ʈ������ �� �Ʒ��� ���� ���� �ڿ�. <br>
                  �ؽ��ϰ� �ݸ��ϴ� �� �ֵ��� ���ÿ���, �� �ڸŰ� ���� �ݴ��� ���� �ο�⿡ �̸���. 
                  <br> ���� ����� �ų��� �浹 �ӿ��� ������ ���۵ȴ�.</p> </div>
              </div>
            </div>
           </c:otherwise>
            </c:choose>
            </div>
       
          <div class="col-12 review_box">
            <div id="rv_outputbox">
         <div id="review_textbox">
          <div>������ ��µ� �κ�</div>
          <div id="review_text"></div>
          <div id="review_date">2022�� 9�� 25��</div> 
         </div> 
         
         </div>
         <div id="rv_inputbox">���Ⱑ ������ �Էµ� �κ� ��
         <input type="text" class="rv_input" name="rv_input" placeholder="�������� �Է��ϼ���">
         <button id="rv_inputbtn">�Է�</button>  
        </div>
         </div>
        </div>
      </div>   
    </div>
      <script>
        //��� �Է½� ���
        $("#rv_inputbtn").on("click", function(){
          let input=$(".rv_input").val();
            let div=$("<div>");
                div.append(input);
            $("#review_text").append(div); 

        })

        $("#bi").click(function() {
          $("#bi").attr
        })//���� ��
      </script>
</body>
</html>