<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-19
  Time: 오후 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../include/head.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>

</head>
<body>
    <h1>testpage</h1>
<%--    <form action="${pageContext.request.contextPath}/dataget" name="test" method="get">--%>
<%--        <div>--%>
<%--            <label>이름</label>--%>
<%--            <input type="text" name="이름"/>--%>
<%--            <label>나이</label>--%>
<%--            <input type="text" name="나이"/>--%>
<%--            <label>전화번호</label>--%>
<%--            <input type="text" name="전화번호"/>--%>
<%--            <button onclick="sendData()">데이터 넘기기</button>--%>
<%--        </div>--%>
<%--    </form>--%>
                <label>이름</label>
                <input class="inputname" type="text" name="name"/>
                <label>나이</label>
                <input class="inputage" type="text" name="age"/>
                <label>전화번호</label>
                <input class="inputphone" type="text" name="phone"/>
                <button type="button" onclick="test2()">데이터 넘기기</button>
</body>

</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>
<script>
    function test(){
        let name = $('.inputname').val();
        let age = $('.inputage').val();
        let phone = $('.inputphone').val();

        $.ajax({
            url:'/test/testpage',
            type:'post',
           data:{
             name : name
           },
            beforeSend: function(xhr){
                var header = $("meta[name='_csrf_header']").attr('content');
                var token = $("meta[name='_csrf']").attr('content');
                xhr.setRequestHeader(header, token);
            },
            success:function (result){

                alert("success");
            }
        });
    }
    function test2(){
        $.ajax({

            url: '${pageContext.request.contextPath}/orderStateRejectUpdate',
            /* url: getContextPath() + '/orderStateUpdate', */
            type:'POST',
            data:{
                order_num : "1",
                state : "2",
                reject_reason : "3"
            },
            success:function(result){
                if(result === 1)
                {
                    alert("11111");
                    location.reload();
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });

    }

</script>