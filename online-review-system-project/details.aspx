<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRatingControl" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
       
       
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Select a Restaurant :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="rest_name" DataValueField="rest_name" Height="23px" Width="121px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT [rest_id], [rest_name], [rest_image], [rest_loc], [ratings], [rest_desc], [reviews], [map] FROM [map]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT [rest_name] FROM [map]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" BackColor="#2C3E50" SeparatorVisible="False">
            <panes>
                <dx:SplitterPane AllowResize="True" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            &nbsp;<asp:Label ID="rest_nameLabel" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("rest_name") %>' />
            <br />
            <asp:Image ID="Image2" runat="server" Height="210px" ImageUrl='<%# Eval("rest_image") %>' Width="312px" />
            <br />
            &nbsp;<asp:Label ID="rest_locLabel" runat="server" Font-Size="Medium" Text='<%# Eval("rest_loc") %>' />
            <br />
            &nbsp;<asp:Label ID="rest_descLabel" runat="server" Font-Size="Medium" ForeColor="#006600" Text='<%# Eval("rest_desc") %>' />
            <br />
            &nbsp;<asp:Label ID="ratingsLabel" runat="server" Font-Size="Medium" Text='<%# Eval("ratings") %>' />
            &nbsp;Ratings By<br />&nbsp;&nbsp;<asp:Label ID="reviewsLabel" runat="server" Font-Size="Medium" Text='<%# Eval("reviews") %>' />
            &nbsp;Critics<br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="266px" ImageUrl='<%# Eval("map") %>' Width="414px" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
                <dx:SplitterPane AllowResize="False" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:Label ID="Label2" runat="server" Text="Login To Comment"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="Label" Font-Size="Medium" ForeColor="#FF3300" Visible="False"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="235px">
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT username, password FROM restaurant.[user]"></asp:SqlDataSource>
        
        <br />
       
        
        <asp:Image ID="Image10" runat="server" Height="35px" ImageUrl="~/fancybox/appbar.user.png" Width="38px" />
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Image ID="Image11" runat="server" Height="27px" ImageUrl="~/fancybox/appbar.lock.png" Width="35px" />
        <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Forgot Password ?"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Signup Here" />
       
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="593px"> <asp:Label ID="Label5" runat="server" Text="Welcome"></asp:Label>
        <br />
        <asp:Image ID="Image5" runat="server" Height="47px" ImageUrl="~/img/appbar.food.silverware.png" Width="56px" />
        What is your Rating for Food(<asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
        /5)<dx:ASPxRatingControl ID="ASPxRatingControl2" runat="server" Theme="PlasticBlue" ToolTip="food">
        </dx:ASPxRatingControl>
        <asp:Image ID="Image6" runat="server" Height="41px" ImageUrl="~/fancybox/appbar.tree.leaf.png" Width="45px" />
        What is your Rating for Cleanliness(<asp:Label ID="Label7" runat="server" Text="0"></asp:Label>
        /5)<dx:ASPxRatingControl ID="ASPxRatingControl3" runat="server" Theme="PlasticBlue">
        </dx:ASPxRatingControl>
        <asp:Image ID="Image7" runat="server" Height="43px" ImageUrl="~/fancybox/appbar.timer.check.png" Width="50px" />
        Is service is good (<asp:Label ID="Label8" runat="server" Text="0"></asp:Label>
        /5)<dx:ASPxRatingControl ID="ASPxRatingControl4" runat="server" Theme="PlasticBlue">
        </dx:ASPxRatingControl>
        <asp:Image ID="Image8" runat="server" Height="40px" ImageUrl="~/fancybox/appbar.money.png" Width="53px" />
        Is price is reasonable (<asp:Label ID="Label9" runat="server" Text="0"></asp:Label>
        /5)<dx:ASPxRatingControl ID="ASPxRatingControl5" runat="server" Theme="PlasticBlue">
        </dx:ASPxRatingControl>
        <asp:Image ID="Image9" runat="server" Height="59px" ImageUrl="~/fancybox/appbar.heart.png" Width="54px" />
        Your Overall Rating is (<asp:Label ID="Label10" runat="server" Text="0"></asp:Label>
        /5)<dx:ASPxRatingControl ID="ASPxRatingControl1" runat="server" Theme="PlasticBlue">
        </dx:ASPxRatingControl>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Company" Height="94px" MaxLength="140" TextMode="MultiLine" ToolTip="Have Anything to Say....." Width="257px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="comment" />
    </asp:Panel>
                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
            </panes>
        </dx:ASPxSplitter>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

