<%@ page import="dao.AnnonceDAO, modeles.Annonce" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier une Annonce</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/modifierAnnonce.css">
</head>
<body>

<%@ include file="navbar.jsp" %>

<%
    String idParam = request.getParameter("id");
    Annonce annonce = null;
    if (idParam != null) {
        try {
            AnnonceDAO dao = new AnnonceDAO();
            annonce = dao.getById(Integer.parseInt(idParam));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<div class="container mt-5">
    <h2 class="text-center"> Modifier une Annonce</h2>

    <% if (annonce != null) { %>
    <div class="form-container">
        <form action="AnnonceUpdate" method="post">
            <input type="hidden" name="id" value="<%= annonce.getId() %>">

            <div class="mb-3">
                <label for="title" class="form-label">Titre :</label>
                <input type="text" id="title" name="title" class="form-control" value="<%= annonce.getTitle() %>" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description :</label>
                <textarea id="description" name="description" class="form-control" required><%= annonce.getDescription() %></textarea>
            </div>

            <div class="mb-3">
                <label for="adress" class="form-label">Adresse :</label>
                <input type="text" id="adress" name="adress" class="form-control" value="<%= annonce.getAdress() %>" required>
            </div>

            <div class="mb-3">
                <label for="mail" class="form-label">Email :</label>
                <input type="email" id="mail" name="mail" class="form-control" value="<%= annonce.getMail() %>" required>
            </div>

            <button type="submit" class="btn btn-warning w-100"> Modifier</button>
        </form>
    </div>
    <% } else { %>
    <p class="text-danger text-center mt-4"> L'annonce n'a pas été trouvée.</p>
    <% } %>
</div>

</body>
</html>
