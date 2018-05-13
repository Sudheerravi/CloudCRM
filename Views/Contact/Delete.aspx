<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<CrmMvc.Models.contactDb>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
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
    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <p>
            <input type="submit" value="Delete" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
</body>
</html>
