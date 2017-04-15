<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="categories.aspx.vb" Inherits="Danh_muc" %>

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
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaDanhMuc" Width="80%" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" InsertVisible="False" ReadOnly="True" SortExpression="MaDanhMuc" />
                                <asp:BoundField DataField="TenDanhMuc" HeaderText="TenDanhMuc" SortExpression="TenDanhMuc" />
                                <asp:BoundField DataField="DanhMucCha" HeaderText="DanhMucCha" SortExpression="DanhMucCha" />
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DanhMuc] WHERE [MaDanhMuc] = @MaDanhMuc" InsertCommand="INSERT INTO [DanhMuc] ([TenDanhMuc], [DanhMucCha]) VALUES (@TenDanhMuc, @DanhMucCha)" SelectCommand="SELECT [MaDanhMuc], [TenDanhMuc], [DanhMucCha] FROM [DanhMuc]" UpdateCommand="UPDATE [DanhMuc] SET [TenDanhMuc] = @TenDanhMuc, [DanhMucCha] = @DanhMucCha WHERE [MaDanhMuc] = @MaDanhMuc">
                            <DeleteParameters>
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="TenDanhMuc" Type="String" />
                                <asp:Parameter Name="DanhMucCha" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TenDanhMuc" Type="String" />
                                <asp:Parameter Name="DanhMucCha" Type="Int32" />
                                <asp:Parameter Name="MaDanhMuc" Type="Int32" />
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

