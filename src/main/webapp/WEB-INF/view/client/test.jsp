<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>

    <head>
        <title>Upload File</title>
    </head>

    <body>
        <h2>Upload File</h2>
        <form action="upload" method="post" enctype="multipart/form-data">
            <label for="file">Chọn file:</label>
            <input type="file" name="file" id="file" />
            <input type="file" name="file" id="file" />
            <input type="file" name="file" id="file" />
            <br /><br />
            <button type="submit">Upload</button>
        </form>
    </body>

    </html>