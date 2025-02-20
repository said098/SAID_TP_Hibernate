<%@ page import="dao.AnnonceDAO, modeles.Annonce" %>
<html>
<head>
    <title>Modifier une Annonce</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp" %>

<div class="container mt-4"><%@ page import="dao.AnnonceDAO, modeles.Annonce" %>
    <html>
    <head>
        <title>Modifier une Annonce</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <%@ include file="navbar.jsp" %>

    <div class="container mt-4">
        <h2 class="text-center text-primary">Modifier une Annonce</h2>
        <form action="AnnonceUpdate" method="post" class="border p-4 rounded shadow bg-white">
            <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <div class="mb-3">
                <label for="title" class="form-label">Titre :</label>
                <input type="text" id="title" name="title" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-warning w-100">Modifier</button>
        </form>
    </div>
    </body>
    </html>
</div>
</body>
</html>
