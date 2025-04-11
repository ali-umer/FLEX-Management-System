<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AHome.aspx.cs" Inherits="AHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

                      
             html {
  margin: 0;
  padding: 0;
}
        body {
  margin: 0;
  padding: 0;
}

        .auto-style2 {
            float: left;
            width: 250px;
            height: 686px;
        }
        #Button7 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: white;
        border-radius: 20px;
        height: 55px;
        width:150px
    }

    #Button7:hover {
        background-color: black;
        color: white;
    }
    
       

 .top-bar {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        height: 145px;
        background-color:slategray;
        color: white;
    }
    
    .left-sidebar {
        position: fixed;
        top: 145px; /* adjust this to match the height of the top bar */
        bottom: 0;
        width: 250px;
        background-color:dimgray;
    }
    
        .right-content {
        margin-left: 270px; /* adjust this to match the width of the left sidebar */
        padding-top: 200px; /* adjust this to match the height of the top bar */
        height: 100%;
        overflow-y: scroll; /* adds vertical scroll bar if content overflows */
    }    

        #Button8 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:250px
    }
        #Button8:hover {
        background-color: black;
        color: white;
    }
    

        #Button9 {
        background-color: transparent;
        border-color: transparent;
        font-weight: bold;
        font-size: large;
        color: black;
        border-radius: 20px;
        height: 55px;
        width:250px
    }

        #Button9:hover {
        background-color: black;
        color: white;
    }
    
     </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="top-bar"><br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="35pt" ForeColor="White" Text="WELCOME TO FLEX"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="Button7" runat="server" Text="LOG OUT" OnClick="Button7_Click" />
             
</div>

<div class="left-sidebar">
    
                <asp:Button ID="Button1" runat="server" Height="74px" OnClick="Button1_Click" Text="HOME" Width="250px" BackColor="transparent" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="65px" OnClick="Button2_Click" Text="OFFER COURSE" Width="250px" BackColor="transparent" style="margin-top: 0px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent" CssClass="auto-style2"/>
                <br />
                <strong>
                <asp:Button ID="Button3" runat="server" Height="68px" OnClick="Button3_Click" Text="ASSIGN COURSE" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
                </strong>
                <br />
                <br />
                <strong>
                <asp:Button ID="Button4" runat="server" Height="64px" OnClick="Button4_Click" Text="MANAGE SECTIONS" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent" />
                </strong>
                <br />
                <br />
                <strong>
                <asp:Button ID="Button5" runat="server" Height="56px" OnClick="Button5_Click" Text="ALLOCATE COURSE" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
                </strong>
                <br />
                <br />
                <strong>
                <asp:Button ID="Button6" runat="server" Height="65px" OnClick="Button6_Click" Text="GENERATE REPORT" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
       
                </strong>
                <br />
       
                <br />
       
</div>

<div class="right-content">
                    <br />
                    <br />
                <div style="border :1px solid black; border-radius: 15px;">
                   <div style="background-color:lightsteelblue;  border-top-left-radius: 15px; border-top-right-radius: 15px;">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="PERSONAL INFORMATION"></asp:Label>
                <br />
            </div>
                <br />
                &nbsp;NAME:
                    <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOB:
                    <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BLOOD GROUP:
                    <asp:Label ID="Label13" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;GENDER:
                    <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CNIC:&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NATIONALITY:
                    <asp:Label ID="Label18" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMAIL:
                    <asp:Label ID="Label15" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOBILE NUMBER:
                    <asp:Label ID="Label16" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                <br />


                <br />


                </div>
            
                <br />
                 <br />
                 <br />

                <br />
                <br />
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="Button8" runat="server" Text="REGISTER STUDENT" OnClick="Button8_Click" />
             
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="Button9" runat="server" Text="REGISTER TEACHER" OnClick="Button9_Click" />
             
                    </strong>
                <br />


      <br />
    <br />
    <br />
        
                    </form>
</body>
</html>
