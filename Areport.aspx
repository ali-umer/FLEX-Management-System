<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Areport.aspx.cs" Inherits="Areport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            height: 140px;
        }
                  html {
  margin: 0;
  padding: 0;
}
        body {
  margin: 0;
  padding: 0;
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
        background-color: black;
        color: white;
    }

           #Button2 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:300px
    }

    #Button2:hover {
        background-color: black;
        color: white;
    }
               #Button3 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:300px
    }

    #Button3:hover {
        background-color: black;
        color: white;
    }

           #Button4 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:300px
    }

    #Button4:hover {
        background-color: black;
        color: white;
    }

               #Button5 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:300px
    }

    #Button5:hover {
        background-color: black;
        color: white;
    }


            
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:dimgray">
            <p class="auto-style3">

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="35pt" ForeColor="white" Text="REPORT GENERATION PORTAL"></asp:Label>
            </p>
        </div>
        <br /><br />

        <asp:Button ID="Button1" runat="server" Height="40px" Text="BACK" Width="88px" OnClick="Button1_Click" />
        <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="COURSE REPORT" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button3" runat="server" Text="SECTION REPORT" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button4" runat="server" Text="ALLOCATION REPORT" OnClick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button5" runat="server" Text="AUDIT REPORT"  OnClick="Button5_Click" />
        <br />

    </form>
</body>
</html>
