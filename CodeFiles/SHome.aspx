<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SHome.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 952px;
            font-weight: 700;
            margin-top: 36px;
        }
        html {
  margin: 0;
  padding: 0;
}
        body {
  margin: 0;
  padding: 0;
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
    
        .auto-style2 {
            font-size: large;
        }
    .right-content {
        margin-left: 260px; /* adjust this to match the width of the left sidebar */
        padding-top: 200px; /* adjust this to match the height of the top bar */
        height: 100%;
        overflow-y: scroll; /* adds vertical scroll bar if content overflows */
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
        </style>
</head>
    
    <body>
    <form id="form1" runat="server">

        <div class="top-bar"><br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="35pt" ForeColor="White" Text="WELCOME TO FLEX"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="Button7" runat="server" Text="LOG OUT" OnClick="Button7_Click" />
             
</div>

<div class="left-sidebar">
    
                <asp:Button ID="Button1" runat="server" Height="70px" OnClick="Button1_Click" Text="HOME" Width="250px" BackColor="transparent" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent" />
                <br />
                <strong>
                <asp:Button ID="Button2" runat="server" Height="75px" OnClick="Button2_Click" Text="COURSE REGISTRATION" Width="250px" BackColor="transparent" style="margin-top: 0px" Font-Bold="True" Font-Size="Large" ForeColor="White" BorderColor="Transparent" CssClass="auto-style2"/>
                </strong>
                <br />
                <strong>
                <asp:Button ID="Button3" runat="server" Height="59px" OnClick="Button3_Click" Text="ATTENDANCE" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
                </strong>
                <br />
                <br />
                <strong>
                <asp:Button ID="Button4" runat="server" Height="59px" OnClick="Button4_Click" Text="MARKS" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent" />
                </strong>
                <br />
                <strong>
                <asp:Button ID="Button5" runat="server" Height="79px" OnClick="Button5_Click" Text="TRANSCRIPT" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
                </strong>
                <br />
                <strong>
                <asp:Button ID="Button6" runat="server" Height="65px" OnClick="Button6_Click" Text="FEEDBACK" Width="250px" BackColor="transparent" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Transparent"/>
       
                </strong>
                <br />
                <br />
                <br />
                <br />
       
                <br />
       
</div>

<div class="right-content">
<div style="border :1px solid black; border-radius: 15px;width:1000px">
            <div style="background-color:lightsteelblue;  border-top-left-radius: 15px; border-top-right-radius: 15px;  ">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="UNIVERSITY INFORMATION" Font-Bold="True"></asp:Label>
                <br />
            </div>
                <br />
                &nbsp;ROLL NO:&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEGREE:&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BATCH:&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                <br />


                <br />
                <br />
                <br />
                <br />


                &nbsp;REG. NO:&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAMPUS:&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STATUS:
                <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="False"></asp:Label>


                <br />
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />


                </div>
            <br />
                    <br />
                    <br />
                <div style="border :1px solid black; border-radius: 15px;width:1000px">
                   <div style="background-color:lightsteelblue;  border-top-left-radius: 15px; border-top-right-radius: 15px;">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="PERSONAL INFORMATION"></asp:Label>
                <br />
            </div>
                <br />
                &nbsp;NAME:
                    <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; DOB:
                    <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BLOOD GROUP:
                    <asp:Label ID="Label13" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;GENDER:
                    <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; CNIC:&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NATIONALITY:
                    <asp:Label ID="Label18" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EMAIL:
                    <asp:Label ID="Label15" runat="server" Text="Label" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MOBILE NUMBER:
                    <asp:Label ID="Label16" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                <br />


                <br />


                </div>
            
                <br />
                 <br />
                 <br />

                <div style="border :1px solid black ; border-radius: 15px;width:1000px">
                   <div style="background-color: lightsteelblue; border-top-left-radius: 15px; border-top-right-radius: 15px; ">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="CONTACT INFORMATION"></asp:Label>
                <br />
            </div>
                <br />
                    &nbsp;ADDRESS: <asp:Label ID="Label19" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                    <br />


                <br />
                    &nbsp;CITY:
                    <asp:Label ID="Label20" runat="server" Text="Label" Font-Bold="False"></asp:Label>
                    <br />
                <br />
                <br />


                    &nbsp;COUNTRY:
                    <asp:Label ID="Label21" runat="server" Text="Label" Font-Bold="False"></asp:Label>

                    </div>
                <br />
                <br />
                <br />


                    <div style="border :1px solid black ; border-radius: 15px;width:1000px">
                   <div style="background-color: lightsteelblue; border-top-left-radius: 15px; border-top-right-radius: 15px; ">
                <br />
                <asp:Label ID="Label22" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="  ATTENDANCE"></asp:Label>
                <br />
            </div>
                <br />
               


 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<asp:Chart Title="ATTENDANCE" ID="Chart1" runat="server" Height="337px" BackSecondaryColor="White" BorderlineColor="Transparent" CssClass="auto-style3">
    <Series>
        <asp:Series Name="Series1" ChartType="StackedBar"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1">
            <AxisX>
                <MajorGrid Enabled="false" />
            </AxisX>
            <AxisY>
                <MajorGrid Enabled="false" />
            </AxisY>
        </asp:ChartArea>
    </ChartAreas>
</asp:Chart>


         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         

                </div>

      <br />
    <br />
    <br />
        
                    <div style="border :1px solid black ; border-radius: 15px;width:1000px">
                   <div style="background-color: lightsteelblue; border-top-left-radius: 15px; border-top-right-radius: 15px; ">
                <br />
                <asp:Label ID="Label23" runat="server" Font-Names="Arial Black" Font-Size="40px" ForeColor="White" Text="  GPA INFORMATION"></asp:Label>
                <br />
            </div>
                <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Chart Title="GPA graph" ID="Chart2" runat="server" Height="337px" style="margin-top: 38px">
    <Series>
        <asp:Series Name="Series2"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea2">
            <AxisX>
                <MajorGrid Enabled="false" />
            </AxisX>
            <AxisY>
                <MajorGrid Enabled="false" />
            </AxisY>
        </asp:ChartArea>
    </ChartAreas>
</asp:Chart>


         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

                
</div>
    </div>
    </form>
</body>

</html>
