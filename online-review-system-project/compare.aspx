<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="compare.aspx.vb" Inherits="compare" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRatingControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v14.1.Web, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxLoadingPanel" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Height="100%" SeparatorVisible="False" Theme="Office2010Black" Font-Names="Arial" ForeColor="Black">
            <panes>
                <dx:SplitterPane AllowResize="True" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [restd]"></asp:SqlDataSource>
    Select a Restaurant
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="rest_name" DataValueField="rest_name" Font-Size="Medium">
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT rest_id, rest_name, rest_image, rest_loc, rest_desc, food, clean, service, price, ratings, reviews FROM restaurant.restd"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            &nbsp;<br />
            <asp:Label ID="rest_nameLabel" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("rest_name") %>' />
            <br />
            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="178px" ImageUrl='<%# Eval("rest_image") %>' Width="304px" />
            <br />
            <asp:Label ID="rest_locLabel" runat="server" Text='<%# Eval("rest_loc") %>' ForeColor="#009900" />
            <br />
            <asp:Label ID="rest_descLabel" runat="server" Text='<%# Eval("rest_desc") %>' Font-Bold="False" ForeColor="#FF3300" />
            <br />
            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/img/appbar.food.png" Width="45px" />
            FOOD:&nbsp;<asp:Label ID="foodLabel" runat="server" Text='<%# Eval("food") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl1" runat="server" Theme="BlackGlass" Value='<%# Eval("food") %>' Enabled="False">
            </dx:ASPxRatingControl>
            <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/img/appbar.tree.leaf.png" Width="45px" />
            CLEANLINESS:&nbsp;<asp:Label ID="cleanLabel" runat="server" Text='<%# Eval("clean") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl2" runat="server" Theme="BlackGlass" Value='<%# Eval("clean") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image5" runat="server" Height="40px" ImageUrl="~/img/appbar.timer.check.png" Width="45px" />
            SERVICE:&nbsp;<asp:Label ID="serviceLabel" runat="server" Text='<%# Eval("service") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl3" runat="server" Theme="BlackGlass" Value='<%# Eval("service") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image6" runat="server" Height="40px" ImageUrl="~/img/appbar.money.png" Width="45px" />
            PRICE :<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl4" runat="server" Theme="BlackGlass" Value='<%# Eval("price") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image7" runat="server" Height="40px" ImageUrl="~/img/appbar.heart.outline.png" />
            RATINGS&nbsp;<asp:Label ID="ratingsLabel" runat="server" Text='<%# Eval("ratings") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl5" runat="server" Theme="BlackGlass" Value='<%# Eval("ratings") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Label ID="reviewsLabel" runat="server" Text='<%# Eval("reviews") %>' />
            &nbsp;Reviews<br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
                <dx:SplitterPane AllowResize="True" AutoHeight="True" AutoWidth="True">
                    <ContentCollection>
<dx:SplitterContentControl runat="server">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [restd]"></asp:SqlDataSource>
    Select a Restaurant
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="rest_name" DataValueField="rest_name" Font-Size="Medium">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" ProviderName="<%$ ConnectionStrings:restaurantConnectionString.ProviderName %>" SelectCommand="SELECT rest_id, rest_name, rest_image, rest_loc, rest_desc, food, clean, service, price, ratings, reviews FROM restaurant.restd"></asp:SqlDataSource>
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" Font-Bold="True" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            &nbsp;<br />
            <asp:Label ID="rest_nameLabel" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("rest_name") %>' />
            <br />
            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="178px" ImageUrl='<%# Eval("rest_image") %>' Width="304px" />
            <br />
            <asp:Label ID="rest_locLabel" runat="server" Text='<%# Eval("rest_loc") %>' ForeColor="#009900" />
            <br />
            <asp:Label ID="rest_descLabel" runat="server" Text='<%# Eval("rest_desc") %>' Font-Bold="False" ForeColor="#FF3300" />
            <br />
            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/img/appbar.food.png" Width="45px" />
            FOOD:&nbsp;<asp:Label ID="foodLabel" runat="server" Text='<%# Eval("food") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl1" runat="server" Theme="BlackGlass" Value='<%# Eval("food") %>' Enabled="False">
            </dx:ASPxRatingControl>
            <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/img/appbar.tree.leaf.png" Width="45px" />
            CLEANLINESS:&nbsp;<asp:Label ID="cleanLabel" runat="server" Text='<%# Eval("clean") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl2" runat="server" Theme="BlackGlass" Value='<%# Eval("clean") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image5" runat="server" Height="40px" ImageUrl="~/img/appbar.timer.check.png" Width="45px" />
            SERVICE:&nbsp;<asp:Label ID="serviceLabel" runat="server" Text='<%# Eval("service") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl3" runat="server" Theme="BlackGlass" Value='<%# Eval("service") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image6" runat="server" Height="40px" ImageUrl="~/img/appbar.money.png" Width="45px" />
            PRICE :<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl4" runat="server" Theme="BlackGlass" Value='<%# Eval("price") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Image ID="Image7" runat="server" Height="40px" ImageUrl="~/img/appbar.heart.outline.png" />
            RATINGS&nbsp;<asp:Label ID="ratingsLabel" runat="server" Text='<%# Eval("ratings") %>' />
            <dx:ASPxRatingControl ID="ASPxRatingControl5" runat="server" Theme="BlackGlass" Value='<%# Eval("ratings") %>' Enabled="False">
            </dx:ASPxRatingControl>
            &nbsp;<asp:Label ID="reviewsLabel" runat="server" Text='<%# Eval("reviews") %>' />
            &nbsp;Reviews<br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
                        </dx:SplitterContentControl>
</ContentCollection>
                </dx:SplitterPane>
            </panes>
        </dx:ASPxSplitter>
        <asp:Panel ID="Panel1" runat="server">
            <dx:ASPxSplitter ID="ASPxSplitter2" runat="server" Height="87px">
                <Panes>
                    <dx:SplitterPane>
                    </dx:SplitterPane>
                    <dx:SplitterPane>
                    </dx:SplitterPane>
                </Panes>
            </dx:ASPxSplitter>
        </asp:Panel>
    </form>
</asp:Content>


