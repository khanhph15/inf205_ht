<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customers.aspx.cs" Inherits="tables" %>

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
						<asp:GridView BorderColor="#CC9966" Width="900px" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" >
                            <Columns>
                                <asp:BoundField DataField="MaKH" HeaderText="MaKH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                                <asp:BoundField DataField="HoDem" HeaderText="HoDem" SortExpression="HoDem" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                <asp:TemplateField HeaderText="SDT" SortExpression="SDT">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (@TenKH, @HoDem, @Email, @DiaChi, @SDT)" SelectCommand="SELECT [MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [HoDem] = @HoDem, [Email] = @Email, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
                            <DeleteParameters>
                                <asp:Parameter Name="MaKH" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="TenKH" Type="String" />
                                <asp:Parameter Name="HoDem" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="SDT" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TenKH" Type="String" />
                                <asp:Parameter Name="HoDem" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="SDT" Type="String" />
                                <asp:Parameter Name="MaKH" Type="Int32" />
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
                                <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" /></td>
                            </tr>
                        </table>
                       
                       
                        
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Basic Table</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data2.json" >
						    <thead>
						    <tr>
						        <th data-field="id" data-align="right">Item ID</th>
						        <th data-field="name">Item Name</th>
						        <th data-field="price">Item Price</th>
						    </tr>
						    </thead>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Styled Table</div>
					<div class="panel-body">
						<table data-toggle="table" id="table-style" data-url="tables/data2.json" data-row-style="rowStyle">
						    <thead>
						    <tr>
						        <th data-field="id" data-align="right" >Item ID</th>
						        <th data-field="name" >Item Name</th>
						        <th data-field="price" >Item Price</th>
						    </tr>
						    </thead>
						</table>
						<script>
						    $(function () {
						        $('#hover, #striped, #condensed').click(function () {
						            var classes = 'table';
						
						            if ($('#hover').prop('checked')) {
						                classes += ' table-hover';
						            }
						            if ($('#condensed').prop('checked')) {
						                classes += ' table-condensed';
						            }
						            $('#table-style').bootstrapTable('destroy')
						                .bootstrapTable({
						                    classes: classes,
						                    striped: $('#striped').prop('checked')
						                });
						        });
						    });
						
						    function rowStyle(row, index) {
						        var classes = ['active', 'success', 'info', 'warning', 'danger'];
						
						        if (index % 2 === 0 && index / 2 < classes.length) {
						            return {
						                classes: classes[index / 2]
						            };
						        }
						        return {};
						    }
						</script>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
     </form>
</asp:Content>

