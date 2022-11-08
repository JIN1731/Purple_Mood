<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<title>������ �� ������</title>
<style>
*{color:white; border:1px solid black;}

.container-fluid{ background:linear-gradient(#03001e,50%,#7303c0,#ec38bc,#fdeff9); }
#logo{height:230px;}
#poster{max-height: 400px;}
#poster>img{max-height: 400px;}
#ott_icon{max-height: 50px;}
#ott_icon>img{max-height: 50px;}
</style>
<body>
  
    <div class="container-fluid text-center">
      <div class="row"> 
        <div class="col-12" id="logo">
            <img src="">���ù��� �ΰ� �̹���</div>
        </div>
        <div class="row">
          <div class="colspan col-sm-3" id="poster">
            <img src="������_������.jpeg" class="img-fluid pt-5" alt="...">
          </div>
          <div class="col-sm-9">
            <div class="row">

              <div class="col-6 col-sm-7">
                <p class="fs-3">������(ARCANE)</p>
              </div>
              <div class="col-6 col-sm-5" id="ott_icon">
              <img src="���ø��� ��ü �ΰ�_�������.png" class="img-fluid" alt="...">
              </div>

              <div class="col-12" id="info">
                <p>�帣:</p> <p>�׼�</p>
                <p>��ó⵵:</p> <p>2021</p> 
                <p>����(imdb ����):</p> <p>9.4</p>
              </div>
              <div class="col-12"id="summary">
                <p>�ٰŸ�</p> 
                 <p>���� ���� ��Ʈ������ �� �Ʒ��� ���� ���� �ڿ�. <br>
                  �ؽ��ϰ� �ݸ��ϴ� �� �ֵ��� ���ÿ���, �� �ڸŰ� ���� �ݴ��� ���� �ο�⿡ �̸���. 
                  <br> ���� ����� �ų��� �浹 �ӿ��� ������ ���۵ȴ�.</p> </div>
              </div>

            </div>
            
          </div>
          <div class="col-12 comment_box">
            <div id="cm_outputbox">
             <div id="comment>���ƿ�</div>
         <div id=" comment_date">2022�� 9�� 25��</div> 
         </div>
         <input type="text" id="cm_inputbox" placeholder="�������� �Է��ϼ���">
         <button id="cm_inputbtn">�Է�</button>  
         </div>
        </div>
      </div>
</body>
</html>