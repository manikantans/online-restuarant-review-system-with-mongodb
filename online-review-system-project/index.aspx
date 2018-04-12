<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRatingControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" AllowResize="False" BackColor="#435669" PaneMinSize="500px" Enabled="False" SeparatorVisible="False">
            <Panes>
                <dx:SplitterPane AllowResize="True" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#2C3E50" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="_id" DataSourceID="SqlDataSource1" ForeColor="White" GridLines="Horizontal" UseAccessibleHeader="True" ViewStateMode="Enabled" RepeatLayout="Flow">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:Label ID="rest_idLabel" runat="server" Text='<%# Eval("rest_id") %>' Visible="False" />
            
            <asp:Label ID="rest_nameLabel" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True" Text='<%# Eval("rest_name") %>' />
            &nbsp;<a href="details.aspx" >View Details:</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<asp:Image ID="Image1" runat="server" Height="350px" ImageUrl='<%# Eval("rest_image") %>' Width="478px" />
            <br />
            <br />
            <asp:Label ID="rest_locLabel" runat="server" Font-Size="Medium" Text='<%# Eval("rest_loc") %>' />
            <br />
            <asp:Label ID="rest_descLabel" runat="server" Text='<%# Eval("rest_desc") %>' />
            <br />
            <dx:ASPxRatingControl ID="ASPxRatingControl1" runat="server" BackColor="#2C3E50" Enabled="False" EnableTheming="True" Theme="BlackGlass" Value='<%# Eval("ratings") %>'>
            </dx:ASPxRatingControl>
            &nbsp; <asp:Label ID="ratingsLabel" runat="server" Font-Bold="True" Text='<%# Eval("ratings") %>' />
            &nbsp; Ratings <br /><asp:Label ID="reviewsLabel" runat="server" Text='<%# Eval("reviews") %>' />
            &nbsp;Reviews<br /> <br /></ItemTemplate><SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
                <dx:SplitterPane AllowResize="True" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF0066" Text="New Offers *"></asp:Label>&nbsp;<asp:DataList ID="DataList2" runat="server" BackColor="#435669" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" Font-Bold="True" Font-Names="Meiryo" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            &nbsp;<asp:Label ID="rest_nameLabel" runat="server" Text='<%# Eval("rest_name") %>' />
            <br />
            <asp:Image ID="Image2" runat="server" Height="158px" ImageUrl='<%# Eval("rest_image") %>' Width="261px" />
            <br />
            &nbsp;<br /> <asp:Label ID="offerLabel" runat="server" ForeColor="#FF9900" Text='<%# Eval("offer") %>' />
            <br />
            <font color="#339966">Offer Valid till :</font> <asp:Label ID="validLabel" runat="server" ForeColor="#339966" Text='<%# Eval("valid") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
            </Panes>
        </dx:ASPxSplitter>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [rest_details]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT  restaurant.rest_details.rest_name, restaurant.rest_details.rest_image, restaurant.offers.offer, restaurant.offers.valid FROM  restaurant.rest_details, restaurant.offers WHERE restaurant.rest_details.rest_id=restaurant.offers.rest_id"></asp:SqlDataSource>
    
    
        
    </form>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    </asp:Content>


