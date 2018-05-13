<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<CrmMvc.Models.contactDb>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Create</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>contactDb</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.DomainURL) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.DomainURL) %>
                <%: Html.ValidationMessageFor(model => model.DomainURL) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.contact) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.contact) %>
                <%: Html.ValidationMessageFor(model => model.contact) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.contactName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.contactName) %>
                <%: Html.ValidationMessageFor(model => model.contactName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.contactRole) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.contactRole) %>
                <%: Html.ValidationMessageFor(model => model.contactRole) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.phone) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.phone) %>
                <%: Html.ValidationMessageFor(model => model.phone) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.email) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
    
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
