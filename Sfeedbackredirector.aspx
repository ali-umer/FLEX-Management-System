<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sfeedbackredirector.aspx.cs" Inherits="Sfeedbackredirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            height: 115px;
            width: 1517px;
        }
        .auto-style2 {
            margin-left: 535px;
            margin-top: 78px;
        }
        .auto-style3 {
            height: 230px;
        }
        .auto-style5 {
            font-size: x-small;
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
        <div class="auto-style3">


        <div style="background-color: dimgray; margin-top: 0px; font-size: 13px;" class="auto-style1">


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="36pt" ForeColor="White" Text="FEEDBACK PORTAL" CssClass="auto-style5"></asp:Label>
            <br />
            <br />
            </div>
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BACK"  />
        </div>
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" CellPadding="4" ForeColor="Black" CssClass="auto-style2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Height="254px" Width="495px">
    <Columns>
        <asp:TemplateField HeaderText="No." ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "coursedetail" + (Container.DataItemIndex + 1) + ".aspx" %>' Text='<%# Container.DataItemIndex + 1 %>'></asp:HyperLink>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
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
