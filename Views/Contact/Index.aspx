<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CrmMvc.Models.contactDb>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
        <p>
        <%: Html.ActionLink("Create New", "Create") %>
         

    </p>
      <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.DomainURL) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.contact) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.contactName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.contactRole) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.phone) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.email) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.DomainURL) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.contact) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.contactName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.contactRole) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.phone) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.email) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID }) %>
            </td>
        </tr>
    <% } %>
     
    </table>
</body>
</html>
