<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/Labb2.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="full" Title="loc:full" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
<%--    <h3>Labb 2</h3>
    <h4>Cars & Employees </h4>

    <p id="demo"></p>
    <button id="btnCar" onclick="Labb2.Cars">Cars</button>
    <button id="btnEmployees" onclick="Labb2.Employees">Employees</button>--%>
    
    <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
    <title>Labb 2</title>
</head>
<body id="bc">
    <div>
        <button id="btnHasCar" class="btn">Employee With Car</button>
    </div>
    <div>
        <button id="btnEmployees" class="btn">Employee</button>
    </div>
    <div>
        <button id="btnCars" class="btn">Cars</button>
    </div>
    <div>
        <button id="btnClear" class="btn">Clear</button>
    </div>
    <div id="mainContainer">
    </div>

    <script src="../Scripts/Labb2.js"></script>
</body>
</html>

</asp:Content>