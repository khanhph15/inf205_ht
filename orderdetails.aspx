<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderdetails.aspx.cs" Inherits="tables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
     <style>
        #tables{
            color: #fff;
            background-color: #30a5ff;
        }       

#insert-box{
    background-color:#30a5ff;
    width:30%;
    display:none;
    overflow:hidden;
    position:absolute;
    top:10%;
    left:50%;
    z-index:99;
}
    </style>
    <div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Dữu liệu</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
			</div>
		</div><div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
                    <div class="panel-heading">Hóa đơn chi tiết</div>
					<div class="panel-body">

                     
                        <br />
                        <asp:GridView CssClass="features-table" ID="GridView1" runat="server" Width="80%" AutoGenerateColumns="False" DataKeyNames="MaHD,MaSP" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" ReadOnly="True" />
                                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                                <asp:CommandField ControlStyle-CssClass="button" ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />                            
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inf205ConnectionString2 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (@MaHD, @MaSP, @Soluong, @DonGia)" SelectCommand="SELECT [MaHD], [MaSP], [Soluong], [DonGia] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [Soluong] = @Soluong, [DonGia] = @DonGia WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                                <asp:Parameter Name="Soluong" Type="Int16" />
                                <asp:Parameter Name="DonGia" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Soluong" Type="Int16" />
                                <asp:Parameter Name="DonGia" Type="Decimal" />
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>   
                        <a class="insert-window" href="#insert-box"><button class="button">Add</button></a>
                        
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		<div class="row">
		</div><!--/.row-->	

          
                        <div id="insert-box">                            
                            <h3 style="text-align:center; color:#fff; font-weight:bold;">THÊM NGƯỜI DÙNG </h3>                            
                        <table class="features-table">
                            <tr>
                                <td>Mã hóa đơn:</td>
                                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Mã sản phẩm:</td>
                                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Số lượng:</td>
                                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Đơn giá:</td>
                                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                           
                            <tr>
                                <td><button class="button" id="close">Đóng</button></td>
                                <td>
                                    <asp:Button CssClass="button" ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
                                </td>
                                
                            </tr>
                        </table>
                        <br />
                        
                        </div>
     </form>

    
</asp:Content>

