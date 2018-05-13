<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>index</title>
</head>
    <script src=“~/Scripts/jquery-1.11.1.min.js”></script> 

<body>
    <form method="post" enctype="multipart/form-data">
    <div>
       <input type="file" name="FileUpload1" id="fileUpload" /><br /> 
        <input id="btnUploadFile" type="submit" value="Upload File" /> 
    </div>
    </form>
</body>
</html>

