<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
     <style>
        #tables{
            color: #fff;
            background-color: #30a5ff;
        }
    </style>
    <div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Tables</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						<asp:GridView BorderColor="#CC9966" Width="839px" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" >
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                                <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" SortExpression="MaDanhMuc" />
                                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (@MaDanhMuc, @TenSP, @Gia, @MoTa, @HinhAnh)" SelectCommand="SELECT [MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDanhMuc] = @MaDanhMuc, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [HinhAnh] = @HinhAnh WHERE [MaSP] = @MaSP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="Decimal" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="HinhAnh" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                                <asp:Parameter Name="TenSP" Type="String" />
                                <asp:Parameter Name="Gia" Type="Decimal" />
                                <asp:Parameter Name="MoTa" Type="String" />
                                <asp:Parameter Name="HinhAnh" Type="Object" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <script>
                            $(document).ready(function () {
                                $('a.login-window').click(function () {
                                    //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
                                    var loginBox = $(this).attr('href');

                                    //cho hiện hộp đăng nhập trong 300ms
                                    $(loginBox).fadeIn(300);

                                    // thêm phần tử id="over" vào sau body
                                    $('body').append('<div id="over">');
                                    $('#over').fadeIn(300);

                                    return false;
                                });

                                // khi click đóng hộp thoại
                                $(document).on('click', "a.close, #over", function () {
                                    $('#over, .login').fadeOut(300, function () {
                                        $('#over').remove();
                                    });
                                    return false;
                                });
                            });
                        </script>
                        </br></br>
                        <table>
                            <tr>
                                <td>Họ:</td>
                                <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Tên:</td>
                                <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Email:</td>
                                <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Địa chỉ:</td>
                                <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>SĐT:</td>
                                <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                            </tr>
                              <tr>                                
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" Text="Thêm" /></td>
                            </tr>
                        </table>
                       
                       
                        
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		<div class="row">
		</div><!--/.row-->	
     </form>
</asp:Content>
