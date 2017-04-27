<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="tables" %>

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
                    <div class="panel-heading">Sản phẩm</div>
					<div class="panel-body">

                     
                        <br />
                        <asp:GridView CssClass="features-table" ID="GridView1" runat="server" Width="80%" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                                <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" SortExpression="MaDanhMuc" />
                                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="button" ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#0296f2" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />                            
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inf205ConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (@MaDanhMuc, @TenSP, @Gia, @MoTa, @HinhAnh)" SelectCommand="SELECT [MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDanhMuc] = @MaDanhMuc, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [HinhAnh] = @HinhAnh WHERE [MaSP] = @MaSP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="Decimal" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="HinhAnh" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="Decimal" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="HinhAnh" Type="String" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>   
                        <a class="insert-window" href="#insert-box"><button class="button">ADD</button>
                            </a>
                        
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
                                <td>Mã danh mục:</td>  
                                
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Tên sản phẩm:</td>
                                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Giá:</td>
                                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Mô tả:</td>
                                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Hình ảnh:</td>
                                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
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

