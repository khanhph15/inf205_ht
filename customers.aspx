<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customers.aspx.cs" Inherits="tables" %>

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
                    <div class="panel-heading">Khách hàng</div>
					<div class="panel-body">

                     
                        <br />
                        <asp:GridView CssClass="features-table" ID="GridView1" runat="server" Width="80%" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="MaKH" HeaderText="MaKH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                                <asp:BoundField DataField="HoDem" HeaderText="HoDem" SortExpression="HoDem" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                                <asp:CommandField ControlStyle-CssClass="button" ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#070099" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />                            
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inf205ConnectionString2 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (@TenKH, @HoDem, @Email, @DiaChi, @SDT)" SelectCommand="SELECT [MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [HoDem] = @HoDem, [Email] = @Email, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
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
                                <td>Họ:</td>
                                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Tên:</td>
                                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Địa chỉ:</td>
                                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>SĐT:</td>
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

