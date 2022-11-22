
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
   <div id="wrapper">
      <div id="title">
         <h1>게시글 상세</h1>
      </div>
      <div id="content" class="getBoard">
         <form th:action="@{/board/updateBoardProc}" method="post">
            <input name="seq" type="hidden" th:value="${board.seq }" />
            <table>
               <colgroup>
                  <col width="30%">
                  <col width="70%">
               <tr>
                  <td width="70" th:text="제목"></td>
                  <td align="left"><input name="title" type="text"
                     th:value="${board.title }" /></td>
               </tr>
               <tr>
                  <td th:text="작성자"></td>
                  <td class="alignLeft" th:text="${board.writer }"></td>
               </tr>
               <tr>
                  <td th:text="내용"></td>
                  <td class="alignLeft"><textarea name="content" th:text="${board.content }" cols="40"
                        rows="10"></textarea></td>
               </tr>
               <tr>
                  <td th:text="등록일"></td>
                  <td th:text="${board.createDate}"></td>
               </tr>
               <tr>
                  <td>조회수</td>
                  <td class="alignLeft" th:text="${board.cnt }"></td>
               </tr>
               <tr>
                  <td colspan="2" class=alignCenter>
                  <input type="submit" value="글 수정" /></td>
               </tr>
            </table>
         </form>
      </div>
      <a th:href="@{/board/insertBoard}">글등록</a>&nbsp;&nbsp;&nbsp; 
      <a th:href="@{/board/deleteBoard(seq=${board.seq })}">글삭제</a>&nbsp;&nbsp;&nbsp; 
      <a th:href="@{/board/listBoard}">글목록</a>
   </div>
</body>
</html>

<!-- <td class="alignLeft"> -->
<!--                   <a th:href="@{getBoard(seq=${board.seq})}"  th:text="${board.title}">${board.title }</a></td> -->