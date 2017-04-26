<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="tables" %>

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
                    <div class="panel-heading">Hóa đơn</div>
					<div class="panel-body">

                     
                        <br />
                        <asp:GridView CssClass="features-table" ID="GridView1" runat="server" Width="80%" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="MaHD" HeaderText="MaHD" InsertVisible="False" ReadOnly="True" SortExpression="MaHD" />
                                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                                <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
                                <asp:BoundField DataField="NgayGiao" HeaderText="NgayGiao" SortExpression="NgayGiao" />
                                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                <asp:CheckBoxField DataField="TrangThai" HeaderText="TrangThai" SortExpression="TrangThai" />
                                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="button" ShowDeleteButton="True" ShowEditButton="True" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inf205ConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (@MaKH, @NgayBan, @NgayGiao, @DiaChi, @TrangThai)" SelectCommand="SELECT [MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [NgayBan] = @NgayBan, [NgayGiao] = @NgayGiao, [DiaChi] = @DiaChi, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
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
                                <td>Mã KH:</td>
                                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Ngày bán:</td>
                                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Ngày giao:</td>
                                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>Địa chỉ:</td>
                                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Trạng thái:</td>
                                <td><asp:CheckBox ID="CheckBox1" runat="server" /></asp:TextBox></td>
                                
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

