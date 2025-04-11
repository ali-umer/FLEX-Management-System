<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Scourseregistration.aspx.cs" Inherits="Courseregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-family: "Arial Black";
            font-size: 36pt;
            color: #FFFFFF;
        }
        .auto-style3 {
            margin-left: 68px;
            margin-top: 33px;
        }
                
        .auto-style11 {
            margin-left: 1337px;
        }
               html {
  margin: 0;
  padding: 0;
}
        body {
  margin: 0;
  padding: 0;
}

                
     #Button2 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:150px
    }

    #Button2:hover {
        background-color: dimgray;
        color: white;
    }
    
     #Button1 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:150px
    }

    #Button1:hover {
        background-color: dimgray;
        color: white;
    }
    

    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div style="background-color: dimgray; margin-top: 0px; font-size: 13px;">


            <br />
   
            <br />


            <span class="auto-style2">&nbsp;COURSE REGISTRATION PORTAL</span><br />
            <br />
            </div>
        <br />
        <asp:Button ID="Button2" runat="server"  Text="BACK"  OnClick="Button2_Click" />

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="SELECT COURSE:"></asp:Label>

        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" Height="30px" Width="312px" style="background-color: #dcdcdc;" AutoPostBack="True">
</asp:DropDownList>


       
         <br />
        <br />



    

        <div class="auto-style11">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CONFIRM"  />
        </div>

    

    

    </form>

             

</body>
</html>
