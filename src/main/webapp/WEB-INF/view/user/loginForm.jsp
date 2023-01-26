<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <h1>로그인 페이지</h1>
        <hr>

        <ul>
            <li>
                <a href="/loginForm">로그인</a>
            </li>
            <li>
                <a href="/joinForm">회원가입</a>
            </li>
        </ul>


        <form action="/login" method="post">
            <input type="text" name="username" placeholder="Enter username" required><br />
            <input type="password" name="password" placeholder="Enter password" required><br />

            <button type="submit">로그인</button>
        </form>

        <%@ include file="../layout/footer.jsp" %>