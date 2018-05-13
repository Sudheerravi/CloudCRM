<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<CrmMvc.Models.contactDb>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Details</title>
</head>
<body>
    <fieldset>
        <legend>contactDb</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.DomainURL) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.DomainURL) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.contact) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.contact) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.contactName) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.contactName) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.contactRole) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.contactRole) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.phone) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.phone) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.email) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.email) %>
        </div>
    </fieldset>
    <p>
    
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
