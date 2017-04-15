<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="orderdetails.aspx.vb" Inherits="cthd" %>

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
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaHD,MaSP" Width="80%" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" ReadOnly="True" />
                                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [DonGia], [Soluong]) VALUES (@MaHD, @MaSP, @DonGia, @Soluong)" SelectCommand="SELECT [MaHD], [MaSP], [DonGia], [Soluong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [DonGia] = @DonGia, [Soluong] = @Soluong WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                                <asp:Parameter Name="DonGia" Type="Decimal" />
                                <asp:Parameter Name="Soluong" Type="Int16" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="DonGia" Type="Decimal" />
                                <asp:Parameter Name="Soluong" Type="Int16" />
                                <asp:Parameter Name="MaHD" Type="Int32" />
                                <asp:Parameter Name="MaSP" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        </br></br>
                        </br></br>
                        <table>
                             <tr>
                                <td>Tên danh mục</td>
                                <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Danh mục cha</td>
                                <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
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

