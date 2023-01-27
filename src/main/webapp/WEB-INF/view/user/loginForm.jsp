<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="flex_box">
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
        </div>

        <div class="flex_box">
            <form action="/login" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td>
                            <input type="text" name="username" placeholder="Enter username" required><br />
                        </td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td>
                            <input type="password" name="password" placeholder="Enter password" required><br />
                        </td>
                    </tr>
                </table>
        </div>
        <div class="flex_box">
            <button type="submit">로그인</button>
            </form>
        </div>

        <%@ include file="../layout/footer.jsp" %>