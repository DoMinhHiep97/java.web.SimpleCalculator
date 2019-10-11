<%--
  Created by IntelliJ IDEA.
  User: 19tha
  Date: 10/11/2019
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<form method="post" action="/calculate">
<h1>Simple Calculator</h1>
<fieldset>
  <legend>calculator</legend>
    <table>
      <tr>
        <td>First operand:</td>
        <td>
          <label>
            <input type="text" name="number1" value="20"/>
          </label>
        </td>
      </tr>
      <tr>
        <td>Operator:</td>
        <td>
          <label>
            <select name="operator">
              <option value="+">Addition</option>
              <option value="-">Subtraction</option>
              <option value="*">Multiplication</option>
              <option value="/">Division</option>
            </select>
          </label>
        </td>
      </tr>
      <tr>
        <td>Second operand:</td>
        <td>
          <label>
            <input type="text" name="number2" value="4"/>
          </label>
        </td>
      </tr>
      <tr>
        <input type="submit" id="submit" value="Calculate">
      </tr>
    </table>
</fieldset>
</form>
</body>
</html>
