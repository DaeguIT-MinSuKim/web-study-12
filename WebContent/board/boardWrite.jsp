<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<style type="text/css">
legend {
	margin-bottom: 20px;
}
</style>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
    $('#add').on("click", function(){
        var newBoard ={
                name:$('#name').val(),
                pass:$('#pass').val(),
                email:$('#email').val(),
                content:$('#content').val(),
                title:$('#title').val()
                };
       $.ajax({
           type:"post",
           url:"boardWrite.do",
           cache: false,
           data: JSON.stringify(newBoard),
           success:function(data){
               alert("추가되었습니다." + data);
               window.location.href="boardList.do";
           }
       }); 
    });
    
    $('#reset').on("click", function(){
        $('input').each(function(index, value){
            $(this).val("")
        });
        $('textarea').val("");
    });
    
    $('#list').on("click", function(){
        location.href = "boardList.do";
    });
});
</script>
</head>
<body>
	<div id="wrap" align="center">
		<legend>게시글 등록</legend>
			<table>
				<tr>
					<th><label for="name">작성자</label></th>
					<td><input id="name" type="text" name="name" required>* 필수</td>
				</tr>
				<tr>
					<th><label for="pass">비밀번호</label></th>
					<td><input id="pass" type="password" name="pass" required>* 필수 (게시물 수정
						삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th><label for="email">이메일</label></th>
					<td><input id="email" type="email" name="email" ></td>
				</tr>
				<tr>
					<th><label for="title">제목</label></th>
					<td><input id="title" type="text" name="title" size="70"></td>
				</tr>
				<tr>
					<th><label for="content">내용</label></th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<div>
				<button id="add">등록</button>
				<button id="reset">다시 작성</button>
				<button id="list">목록</button>
			</div>
	</div>
</body>
</html>