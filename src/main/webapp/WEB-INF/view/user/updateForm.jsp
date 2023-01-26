<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <h1>회원수정 페이지</h1>
        <hr />
        <form action="/user/${user.id}/updateForm" method="post"></form>
        <table border="1">
            <tr>
                <th>유저네임</th>
                <th>패스워드</th>
                <th>이메일</th>
            </tr>
            <tr>
                <td><input type="text" value="${user.username}" name="username"></td>
                <td><input type="password" value="${user.password}" name="password"></td>
                <td><input type="email" value="${user.email}" name="email"></td>
            </tr>
        </table>

        <button type="submit">회원수정완료</button>


        <%@ include file="../layout/footer.jsp" %>