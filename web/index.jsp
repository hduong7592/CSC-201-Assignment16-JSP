<%--
  Created by IntelliJ IDEA.
  User: hieuduong
  Date: 11/10/17
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculate sum of ArrayList values</title>
  <script>
      function validateForm(){
          var val1 = document.forms["myForm"]["value1"].value;
          if(val1 == ""){
              alert("Value 1 is required!");
              document.forms["myForm"]["value1"].focus();
              return false;
          }

      }

      function ConvertToKm(val) {
          if(val!="") {
              var convertedValue = Convert(val, "toKm");
              document.forms["myForm"]["kilometerInput"].value = convertedValue;
          }
      }

      function ConvertToMile(val) {

          if(val!=""){
              var convertedValue = Convert(val, "toMile");
              document.forms["myForm"]["mileInput"].value = convertedValue;
          }
      }

      function Convert(val, whichConversion) {

          //Check for real input number
          var value = parseFloat(val);
          var convertedValue = 0.0;
          if (whichConversion=="toMile") {
              convertedValue = value * 0.621371;
          } else {
              convertedValue = value / 0.621371;
          }
          return convertedValue;
      }
  </script>
</head>
<body>
<br>
/**<br>
* Hieu Duong<br>
* CSC201<br>
* Assignment 16<br>
* Problem 16.4:<br>
*<br>
* (Create a miles/kilometers converter) Write a program that converts miles and<br>
* kilometers, as shown in Figure 16.37b. If you enter a value in the Mile text field<br>
* and press the Enter key, the corresponding kilometer measurement is displayed<br>
* in the Kilometer text field. Likewise, if you enter a value in the Kilometer text<br>
* field and press the Enter key, the corresponding miles is displayed in the Mile<br>
* text field.<br>
*/<br>
  *<br>
  */<br>
  <br>
  <form name="myForm" action="process.jsp" method="post">
    <table align="center" style="width: 400px;">
      <tr>
        <td style="width: 150px; text-align: left;">
          Mile:
        </td>
        <td>
          Kilometer:
        </td>
      </tr>
      <tr>
        <td style="width: 150px; text-align: left;">
          <input type="text" value="" id="1" name="mileInput" onkeyup="ConvertToKm(this.value)">
        </td>
        <td>
          <input type="text" value="" id="2" name="kilometerInput" onkeyup="ConvertToMile(this.value)">
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
