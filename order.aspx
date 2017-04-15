<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="order.aspx.vb" Inherits="hd" %>

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
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaHD" Width="80%" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="MaHD" HeaderText="MaHD" InsertVisible="False" ReadOnly="True" SortExpression="MaHD" />
                                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                                <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
                                <asp:BoundField DataField="NgayGiao" HeaderText="NgayGiao" SortExpression="NgayGiao" />
                                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                <asp:CheckBoxField DataField="TrangThai" HeaderText="TrangThai" SortExpression="TrangThai" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (@MaKH, @NgayBan, @NgayGiao, @DiaChi, @TrangThai)" SelectCommand="SELECT [MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [NgayBan] = @NgayBan, [NgayGiao] = @NgayGiao, [DiaChi] = @DiaChi, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
                            <DeleteParameters>
                                <asp:Parameter Name="MaHD" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MaKH" Type="Int32" />
                                <asp:Parameter Name="NgayBan" Type="DateTime" />
                                <asp:Parameter Name="NgayGiao" Type="DateTime" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="TrangThai" Type="Boolean" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="MaKH" Type="Int32" />
                                <asp:Parameter Name="NgayBan" Type="DateTime" />
                                <asp:Parameter Name="NgayGiao" Type="DateTime" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="TrangThai" Type="Boolean" />
                                <asp:Parameter Name="MaHD" Type="Int32" />
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

