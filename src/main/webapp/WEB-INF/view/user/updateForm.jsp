<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="flex_box">
            <h1>회원수정 페이지</h1>
        </div>
        <hr />
        <div class="flex_box">
            <ul>
                <li>
                    <a href="/loginForm">로그인</a>
                </li>
                <li>
                    <a href="/joinForm">회원가입</a>
                </li>
            </ul>
        </div>
        <div class="flex_box">
            <form action="/update" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" value="${user.username}" name="username" required></td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" value="${user.password}" name="password" required></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="email" value="${user.email}" name="email" required></td>
                    </tr>
                </table>
        </div>
        <div class="flex_box">
            <button type="submit">회원수정완료</button>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>