<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*"%>
<jsp:include page="/header.jsp"></jsp:include>
<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://127.0.0.1:3306/project?useUnicode=true&serverTimezone=UTC"
        user="root" password=""
/>
<sql:query dataSource="${db}" var="students">
    SELECT * FROM students;
</sql:query>
<div class="row">

    <div class="container">
        <h3 class="text-center">AITU Students</h3>
        <hr>

        <br>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01">GROUP</label>
            </div>
            <select class="custom-select" id="inputGroupSelect01" onchange="groupChange()">
                <option value = "0" selected>Choose...</option>
                <option value="SE-1902">SE-1902</option>
                <option value="IT-1906">IT-1906</option>
                <option value="CS-1902">CS-1902</option>
            </select>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect02">MAJOR</label>
            </div>
            <select class="custom-select" id="inputGroupSelect02" onchange="majorChange()">
                <option value = "0" selected>Choose...</option>
                <option value="Software Engineer">Software Engineer</option>
                <option value="Big Data">Big Data</option>
                <option value="Cyber Security">Cyber Security</option>
            </select>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect03">YEAR</label>
            </div>
            <select class="custom-select" id="inputGroupSelect03" onchange="yearChange()">
                <option value = "0" selected>Choose...</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
            </select>
        </div>
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm">
        <br>
        <table class="table table-bordered" id = "myTable">
            <thead>
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Group</th>
                <th>Major</th>
                <th>Year</th>
                <th>Email</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="students" items="${students.rows}">
                <tr>
                    <td><c:out value="${students.first_name}" /></td>
                    <td><c:out value="${students.last_name}" /></td>
                    <td><c:out value="${students.s_group}" /></td>
                    <td><c:out value="${students.major}" /></td>
                    <td><c:out value="${students.year}" /></td>
                    <td><c:out value="${students.email}" /></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    function groupChange() {
        var input, filter, td, tr, table, txtValue, i;
        input = document.getElementById("inputGroupSelect01")
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        if(filter == "0") {
            for(i = 0; i < tr.length; i++) {
                tr[i].style.display = "";
            }
        }
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[2];
            if (td) {
                txtValue = td.textContent || td.innerText;

                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
    function majorChange() {
        var input, filter, td, tr, table, txtValue, i;
        input = document.getElementById("inputGroupSelect02")
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        if(filter == "0") {
            for(i = 0; i < tr.length; i++) {
                tr[i].style.display = "";
            }
        }
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[3];
            if (td) {
                txtValue = td.textContent || td.innerText;

                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
    function yearChange() {
        var input, filter, td, tr, table, txtValue, i;
        input = document.getElementById("inputGroupSelect03")
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        if(filter == "0") {
            for(i = 0; i < tr.length; i++) {
                tr[i].style.display = "";
            }
        }
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[4];
            if (td) {
                txtValue = td.textContent || td.innerText;

                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    function myFunction() {
        // Declare variables
        var input, filter, table, tr, td, i, txtValue, td1, txtValue1;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            td1 = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                txtValue1 = td1.textContent || td1.innerText;

                if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue1.toUpperCase().indexOf(filter) > -1
                || (txtValue + " " + txtValue1).toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }

    }
</script>
<jsp:include page="/footer.jsp"></jsp:include>