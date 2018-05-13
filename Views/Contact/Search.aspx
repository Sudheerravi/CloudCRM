<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<CrmMvc.Models.contactDb>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Search</title>
</head>
<body>
     <script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
      <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
     <fieldset>
    <div>
       
        Search Company : 
    <div class="editor-label">
                <%: Html.LabelFor(model => model.DomainURL) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.DomainURL) %>
                              
            </div>
        
        
    </div>
    <p>
                <input type="submit" value="Search" />
            </p>
        </fieldset>
    <% } %>
</body>
</html>
