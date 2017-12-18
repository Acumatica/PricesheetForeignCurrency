<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RC507777.aspx.cs" Inherits="Page_RC507777" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PXCurrencyRateExt.PXRecalcCurrency"
        PrimaryView="Orders"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid runat="server" Height="150px" SkinID="Inquire" Width="100%" ID="grid" AllowAutoHide="false" DataSourceID="ds">
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<Levels>
			<px:PXGridLevel DataMember="Orders">
				<RowTemplate>
					<px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="M" ControlSize="M" />
					<px:PXLayoutRule runat="server" Merge="True" />
					<px:PXCheckBox runat="server" DataField="Selected" ID="chkSelected" />
					<px:PXSelector runat="server" AllowNull="False" DataField="OrderType" Enabled="False" Size="xxs" ID="edOrderType" />
					<px:PXLayoutRule runat="server" Merge="False" />
					<px:PXSelector runat="server" DataField="OrderNbr" Enabled="False" AllowEdit="True" ID="edOrderNbr" />
					<px:PXSegmentMask runat="server" DataField="CustomerID" Enabled="False" ID="edCustomerID" />
					<px:PXSegmentMask runat="server" DataField="CustomerLocationID" Enabled="False" ID="edCustomerLocationID" />
					<px:PXDateTimeEdit runat="server" Enabled="False" DataField="OrderDate" ID="edOrderDate" />
					<px:PXSelector runat="server" DataField="CuryID" Enabled="False" ID="edCuryID" />
					<px:PXNumberEdit runat="server" AllowNull="False" Enabled="False" DataField="CuryOrderTotal" ID="edCuryOrderTotal" /></RowTemplate>
				<Columns>
					<px:PXGridColumn Type="CheckBox" TextAlign="Center" DataField="Selected" Width="30px" AllowNull="False" AllowMove="False" AllowSort="False" AllowCheckAll="True" />
					<px:PXGridColumn DisplayFormat=">LL" DataField="OrderType" Width="35px" AllowNull="False" AllowUpdate="False" />
					<px:PXGridColumn DataField="OrderNbr" Width="90px" AllowUpdate="False" LinkCommand="ViewDocument" />
					<px:PXGridColumn DataField="OrderDesc" Width="117px" AllowUpdate="False" Label="Description" />
					<px:PXGridColumn DataField="CustomerOrderNbr" AllowUpdate="False" Label="Customer Order" />
					<px:PXGridColumn DataField="Status" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn DataField="RequestDate" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn DataField="ShipDate" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat="AAAAAAAAAA" DataField="CustomerID" Width="90px" AllowUpdate="False" />
					<px:PXGridColumn DataField="CustomerID_BAccountR_acctName" Width="117px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat=">AAAAAAA" DataField="CustomerLocationID" Width="90px" AllowUpdate="False" />
					<px:PXGridColumn DataField="CustomerLocationID_Location_descr" Width="117px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat=">AAAAAAA" DataField="DefaultSiteID" Width="90px" AllowUpdate="False" />
					<px:PXGridColumn DataField="DefaultSiteID_INSite_descr" Width="117px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat="AAAAAAAAAA" DataField="ShipVia" Width="90px" AllowUpdate="False" />
					<px:PXGridColumn DataField="ShipVia_Carrier_description" Width="117px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat="AAAAAAAAAA" DataField="ShipZoneID" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn DataField="WorkgroupID" AllowUpdate="False" />
					<px:PXGridColumn DataField="OwnerID" AllowUpdate="False" />
					<px:PXGridColumn TextAlign="Right" DataField="OrderWeight" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn TextAlign="Right" DataField="OrderVolume" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn TextAlign="Right" DataField="OrderQty" Width="81px" AllowUpdate="False" />
					<px:PXGridColumn DisplayFormat=">LLLLL" DataField="CuryID" Width="54px" AllowUpdate="False" />
					<px:PXGridColumn TextAlign="Right" DataField="CuryOrderTotal" Width="81px" AllowUpdate="False" /></Columns></px:PXGridLevel></Levels></px:PXGrid></asp:Content>
