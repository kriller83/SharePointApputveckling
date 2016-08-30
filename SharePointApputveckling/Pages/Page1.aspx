<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/Labb1.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="full" Title="loc:full" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <h3>Formulär</h3>
<form id="myForm" name="form" action=" "> 
Förnamn:<br />
<input type="text" name="fnamn" id="fnamn" /> <br />
Efternamn:<br />
<input type="text" name="enamn" id="enamn" /> <br />
E-postadress:<br />
<input type="text" name="epost" id="epost" /> <br />
Adress:<br />
<input type="text" name="adress" id="adress" /> <br />      
Postnummer:<br />
<input type="text" name="postnr" id="postnr" /> <br />     
Ort:<br />
<input type="text" name="ort" id="ort" /> <br />      
Tel nummer:<br />
<input type="text" name="tel" id="tel" /> <br />
Datum för önskad start:<br />
<input type="text" name="start" id="start" /> <br />

</form>
<button id="OKButton">OK</button>
<button id="CancelButton">Avbryt</button>

</asp:Content>


