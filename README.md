# Purple_Mood

> 개발환경
* OS : windows
* Java : 11
* DB : Oracle
* DBMS : SQLDepveloper
* 서버 실행 : Tomcat8.5
* IDE : VSCode, eclipse
* 배포 : AWS
* 기타환경 : ojdbc6, gson, cos, jstl, JSP, json, jQuery, bootstrap, css, javascript, html, ajax
* 기타 API : 카카오 우편 API, summernote, TMDB
* 기타 협업 툴 : Git, github, source tree, google drive, discord, zoom

<br>
<br>

> 프로젝트 시 활용해본 대표 기술
* Jquery 요소탐색&동적바인딩을 활용한 댓글/신고 기능
* bootstrap, Grid System을 활용한 반응형 웹 구현
* cos, MultipartFormData를 활용한 파일 전송,저장,출력
* StringBuilder를 이용한 페이징, 검색페이징 처리
* front에서 전반적으로 jQuery, 필요시 ajax 사용
* summernote API 사용으로 게시글 작성 구현(이미지 업로드 가능)

<br>
<br>

> 프로젝트 전체 구현 기능
1.	메인 페이지
-	인기 순, 최신 순 콘텐츠 출력
-	OTT 카테고리 버튼 (넷플릭스, 왓챠, 디즈니플러스, 웨이브)
-	검색창
2.	콘텐츠 정보 추출을 위한 TMDB API 사용
3.	검색 기능
-	통합 검색 / OTT별 검색
4.	OTT별 영화 출력 페이지
-	각 OTT에 해당하는 콘텐츠 출력
5.	영화 / 드라마 페이지
-	영화, 드라마 정보 상세 출력
-	해당 OTT 사이트 이동 버튼
6.	로그인
7.	회원가입
-	ajax로 아이디, 닉네임 중복 확인, 결과 출력
-	ajax로 비밀번호 일치 확인, 결과 출력
-	각 항목 유효성 검사
-	카카오 우편 API 사용(우편번호, 주소 직접 입력 불가)
8.	마이페이지
-	회원정보 수정(회원가입과 동일 조건, ID수정 불가)
-	작성한 글 / 댓글 출력
9.	영화/드라마 게시판
-	작성, 출력, 수정, 삭제
-	게시판 리스트 페이징
-	내용 작성 시 Summer note API 사용(이미지 입력, 저장, 출력 구현)
-	카테고리 선택(수정 시 선택된 카테고리 출력)
10.	게시판 댓글 기능(작성 / 출력 / 수정 / 삭제)
11.	게시판 신고 기능
-	다른 사람의 게시글과 댓글 신고
-	본인의 글, 댓글일 경우 신고 태그 출력 X
12.	검색 기능
-	제목/작성자/내용 카테고리 선택 후 검색 가능
-	검색 결과 페이징
13.	관리
-	회원 과 콘텐츠 (드라마, 영화) 전체 출력 및 삭제
-	신고 게시글과 신고 댓글 출력 및 삭제

<br>
<br>

> 화면 구성

* 메인
  * 메인 페이지 캐러셀, OTT별 작품 페이지로 이동하는 버튼, 인기/최신 작품력출력
![퍼플무드 메인 페이지 소개 gif](https://user-images.githubusercontent.com/116864859/220265170-7224fdcc-460e-4af1-9c62-a3c6770e2cd7.gif)

<br>

* 메뉴바
  * 로그인/비로그인/관리자 메뉴 다르게 출력
![메뉴바](https://user-images.githubusercontent.com/116864859/220266861-e6d2ed21-a918-4948-9c8c-b8d659d29736.png)

<br>

* OTT별 페이지
  ![OTT별 페이지](https://user-images.githubusercontent.com/116864859/220265306-50c5b8eb-d795-4911-a0cc-409f20d6deb0.png)

<br>

* 작품 검색 페이지
  ![검색 페이지](https://user-images.githubusercontent.com/116864859/220265486-262750b9-2754-4783-ae95-8cf433aa9c74.png)

<br>

* 작품 상세 페이지
  ![상세 페이지](https://user-images.githubusercontent.com/116864859/220265725-57b8067e-34cc-4805-b80e-9ccc0f93502a.png)

<br>

* 게시판
  * 게시판 페이징 Back에서 구현, 검색 기능 분류별로 가능, 게시판 검색 결과도 페이징
  * 글 작성 summernoteAPI 사용(이미지 업로드 가능), 옵션 분류
  * 글 수정 시 기존 값(옵션 값도) 출력 후 수정
  * 글 디테일 페이지 댓글 CRUD 가능
  ![localhost_boardList board_cpage=1 (2)](https://user-images.githubusercontent.com/116864859/220266078-0f804c5e-aa1c-40a4-b14d-bed9c20ac3b9.png)
  ![localhost_boardSearchList board_cpage=2 boardSearchOption=b_title boardSearchWord=1234](https://user-images.githubusercontent.com/116864859/220266167-31a7f85a-ee2a-42cb-a70a-9562c96e2976.png)
  ![localhost_board_insertBoardContents jsp (2)](https://user-images.githubusercontent.com/116864859/220269388-0b954452-b02d-423b-b0bd-e6d46b2218f5.png)
![localhost_selectBoardContents board_b_seq=144 (1)](https://user-images.githubusercontent.com/116864859/220273175-bd2812cb-22ff-468a-85dd-28485fb76e38.png)
![localhost_beforeUpdateBoardContents board_b_seq=144](https://user-images.githubusercontent.com/116864859/220269542-7d62c2c6-415e-4806-9a16-fd7584173d4e.png)

* 로그인
  ![로그인](https://user-images.githubusercontent.com/116864859/220266338-6488bad5-a2d5-45e6-914a-d11744908e1e.jpg)

<br>

* 회원가입
  * 아이디 중복, 유효성 검사 실시
  ![localhost_mypageMemInfo member (1)](https://user-images.githubusercontent.com/116864859/220266453-2073c022-5145-446a-a952-37222235d667.png)

<br>

* 마이페이지
  * 수정 시 기존 값 출력 후 수정
  * 아이디 중복, 유효성 검사 실시
  * 내가 쓴 글/댓글 확인 가능 클릭 시 글로 이동
  ![localhost_mypageMemInfo member (1)](https://user-images.githubusercontent.com/116864859/220266605-5d7a3afb-2cd8-4919-a788-aa1f5380010c.png)
  ![localhost_member_mypage jsp (2)](https://user-images.githubusercontent.com/116864859/220266623-1722995f-abad-4dda-9fb8-57d2cee3cd62.png)

<br>

* 관리자페이지

  ![관리 페이지](https://user-images.githubusercontent.com/116864859/220266735-e58fa67e-857a-4d83-a0e3-143250def684.png)


