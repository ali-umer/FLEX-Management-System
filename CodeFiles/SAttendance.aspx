<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SAttendance.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 413px;
        }
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
        background-color: dimgray;
        color: white;
    }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:dimgray;"><p class="auto-style3">

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="35pt" ForeColor="white" Text="ATTENDANCE PORTAL"></asp:Label>
            </p>
            </div>
        <div>

            <asp:Button ID="Button1" runat="server" Text="Back"  OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="27px" Width="433px" 
    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" BackColor="#D3D3D3">
</asp:DropDownList>

        </div>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="726px" CssClass="auto-style2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:TemplateField HeaderText="No.">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</body>
</html>
