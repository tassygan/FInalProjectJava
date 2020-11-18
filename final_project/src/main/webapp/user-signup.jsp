
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<head>
</head>
<body>



            <form action="Signup" method="post">
                <caption>
                    <h2>
                        Sign-Up
                    </h2>
                </caption>

                <fieldset >
                    <label>User Name</label> <input type="text"

                                                    name="username" required="required">
                </fieldset>

                <fieldset >
                    <label>Year</label> <input type="text"

                                               name="year" required="required">
                </fieldset>

                <fieldset >
                    <label>Email</label> <input type="text"

                                                name="email">
                </fieldset>

                <fieldset >
                    <label>Password</label> <input type="password"

                                                   name="password">
                </fieldset>

                <button type="submit" >Sign-Up</button>
            </form>

</body>
</html>