<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coursedetail5.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body>


    <form id="form1" runat="server">
        <div>


        <div style="height: 56px; background-color: #003399; margin-top: 0px; width: 903px; font-size: 13px;">


            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="25pt" ForeColor="White" Text="Teacher Assessment Form"></asp:Label>
            <br />
   
            <br />
            <br />
            <br />
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="15pt" Text="Name of Teacher" Font-Bold="True"></asp:Label>
            &nbsp;:
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" style="font-weight: 700" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="15pt" Text="Subject" Font-Bold="True"></asp:Label>
        &nbsp;:
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" style="font-weight: 700" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" style="font-weight: 700" Text="Label" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <div style="margin-left: 80px">
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            -------------------------------------------------------------------------------------------------------------------------------------------------------<br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="15pt" Text="Room Number " Font-Bold="True"></asp:Label>
        :
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" style="font-weight: 700" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="15pt" Text="School Year" Font-Bold="True"></asp:Label>
            &nbsp;:
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" style="font-weight: 700" Text="Label"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Please fill out the form in evaluating your instructor for the semester. After completion,</br> please press the submit button." Font-Size="Large"></asp:Label>
            <br />
            <br />
            <br />
        <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="For reference, the metric are as follows: " Font-Size="Large"></asp:Label>
            <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 -&nbsp; Poor<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 - Below Average
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 - Average<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 - Good
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 - Excellent
        <br />
        <br />
        <br />
            -------------------------------------------------------------------------------------------------------------------------------------------------------<br />
            <asp:Label ID="Label20" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;
            <strong>APPEARANCE AND PERSONAL PRESENTATION*</strong>
            <br />

        <table id ="mytable1">
            <tr>
    <th style="background-color: #000080">&nbsp;</th>
    <th style="background-color: #CCCCCC">1</th>
    <th style="background-color: #CCCCCC">2</th>
    <th style="background-color: #CCCCCC">3</th>
    <th style="background-color: #CCCCCC">4</th>
    <th style="background-color: #CCCCCC">5</th>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher attends class in a well presentable manner</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row1" value="Option1 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row1" value="Option1 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row1" value="Option1 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row1" value="Option1 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row1" value="Option1 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher shows enthusiasm when teaching in class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row2" value="Option1 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row2" value="Option1 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row2" value="Option1 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row2" value="Option1 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row2" value="Option1 5" /></td>
  </tr>
             <tr>
      <td style="background-color: #C0C0C0">Teacher shows initiative and flexibility in class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row3" value="Option1 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row3" value="Option1 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row3" value="Option1 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row3" value="Option1 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row3" value="Option1 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher is well articulated and shows full knowledge of the subject in teaching</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row4" value="Option1 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row4" value="Option1 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row4" value="Option1 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row4" value="Option1 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row4" value="Option1 5" /></td>
  </tr>

  <tr>
      <td style="background-color: #C0C0C0">Teacher speaks loud and clear enough to be heard by the whole class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row5" value="Option1 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row5" value="Option1 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row5" value="Option1 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row5" value="Option1 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="1row5" value="Option1 5" /></td>
  </tr>


</table>

            <br />
            <br />
            <br />
            <strong>PROFESSIONAL PRACTICES*</strong><br />

        </div>

        <table id ="mytable2">
            <tr>
    <th style="background-color: #000080">&nbsp;</th>
    <th style="background-color: #CCCCCC">1</th>
    <th style="background-color: #CCCCCC">2</th>
    <th style="background-color: #CCCCCC">3</th>
    <th style="background-color: #CCCCCC">4</th>
    <th style="background-color: #CCCCCC">5</th>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher shows professionalism in class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row1" value="Option2 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row1" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row1" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row1" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row1" value="Option2 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher shows commitment to teaching the class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row2" value="Option2 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row2" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row2" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row2" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row2" value="Option2 5" /></td>
  </tr>
             <tr>
      <td style="background-color: #C0C0C0">Teacher encourages students to engage in class discussions and ask questions</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row3" value="Option2 1" checked ="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row3" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row3" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row3" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row3" value="Option2 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher handles criticisms and suggestions professionally </td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row4" value="Option2 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row4" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row4" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row4" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row4" value="Option2 5" /></td>
  </tr>

  <tr>
      <td style="background-color: #C0C0C0">Teacher comes to class on time</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row5" value="Option2 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row5" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row5" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row5" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row5" value="Option2 5" /></td>
  </tr>

              <tr>
      <td style="background-color: #C0C0C0">Teacher ends class on time</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row6" value="Option2 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row6" value="Option2 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row6" value="Option2 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row6" value="Option2 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="2row6" value="Option2 5" /></td>
  </tr>


</table>

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

  
        <strong>TEACHING METHODS*</strong><table id ="mytable3">
            <tr>
    <th style="background-color: #000080">&nbsp;</th>
    <th style="background-color: #CCCCCC">1</th>
    <th style="background-color: #CCCCCC">2</th>
    <th style="background-color: #CCCCCC">3</th>
    <th style="background-color: #CCCCCC">4</th>
    <th style="background-color: #CCCCCC">5</th>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher shows well rounded knowledge</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row1" value="Option3 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row1" value="Option3 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row1" value="Option3 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row1" value="Option3 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row1" value="Option3 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher has organized the lesson conductive for easy understanding of students</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row2" value="Option3 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row2" value="Option3 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row2" value="Option3 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row2" value="Option3 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row2" value="Option3 5" /></td>
  </tr>
             <tr>
      <td style="background-color: #C0C0C0">Teacher shows dynamisn and enthusiasm</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row3" value="Option3 1" checked ="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row3" value="Option3 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row3" value="Option3 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row3" value="Option3 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row3" value="Option3 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher stimulates the critical thinking of students</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row4" value="Option3 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row4" value="Option3 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row4" value="Option3 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row4" value="Option3 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row4" value="Option3 5" /></td>
  </tr>

  <tr>
      <td style="background-color: #C0C0C0">Teacher handles the class environment conductive for learning</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row5" value="Option3 1" checked="checked"/></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row5" value="Option3 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row5" value="Option3 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row5" value="Option3 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="3row5" value="Option3 5" /></td>
  </tr>

</table>
 
        <br />
        <br />
 
    <br />
            <strong>DISPOSITION TOWARDS STUDENTS*</strong><table id ="mytable4">
            <tr>
    <th style="background-color: #000080">&nbsp;</th>
    <th style="background-color: #CCCCCC">1</th>
    <th style="background-color: #CCCCCC">2</th>
    <th style="background-color: #CCCCCC">3</th>
    <th style="background-color: #CCCCCC">4</th>
    <th style="background-color: #CCCCCC">5</th>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher believes that students can learn from the class</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row1" value="Option4 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row1" value="Option4 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row1" value="Option4 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row1" value="Option4 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row1" value="Option4 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race </td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row2" value="Option4 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row2" value="Option4 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row2" value="Option4 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row2" value="Option4 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row2" value="Option4 5" /></td>
  </tr>
             <tr>
      <td style="background-color: #C0C0C0">Teacher finds the students&#39; strengths as basis for growth and weakness for opportunities for improvement</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row3" value="Option4 1" checked ="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row3" value="Option4 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row3" value="Option4 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row3" value="Option4 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row3" value="Option4 5" /></td>
  </tr>
  <tr>
      <td style="background-color: #C0C0C0">Teacher understands the weaknesses of a student and helps in the student&#39;s improvement</td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row4" value="Option4 1" checked="checked" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row4" value="Option4 2" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row4" value="Option4 3" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row4" value="Option4 4" /></td>
    <td style="background-color: #CCCCCC"><input type="radio" name="4row4" value="Option4 5" /></td>
  </tr>


</table>



    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
        <br />
        <asp:Label ID="Label14" runat="server" Font-Names="Arial" Text="Comments" Font-Size="Large"></asp:Label>
            <br />
        <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Groove" Height="143px" Width="626px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#003399" Font-Names="Times New Roman" ForeColor="White" Height="49px" style="margin-left: 0px" Text="Submit" Width="88px" OnClick="Button2_Click" />

    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
