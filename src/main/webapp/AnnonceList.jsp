<%@ page import="java.util.List, modeles.Annonce, dao.AnnonceDAO" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Liste des Annonces</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/annoncelist.css">
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-5">
  <h2 class="text-center">Liste des Annonces</h2>

  <div class="d-flex justify-content-end mb-3">
    <a href="AnnonceAdd.jsp" class="btn btn-primary shadow"> Ajouter une Annonce</a>
  </div>

  <div class="table-responsive">
    <table class="table table-bordered table-hover">
      <thead class="table-dark text-white">
      <tr>
        <th>ID</th>
        <th>Titre</th>
        <th>Description</th>
        <th>Adresse</th>
        <th>Email</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <%
        try {
          AnnonceDAO dao = new AnnonceDAO();
          List<Annonce> annonces = dao.getAll();
          for (Annonce annonce : annonces) {
      %>
      <tr>
        <td><strong><%= annonce.getId() %></strong></td>
        <td><%= annonce.getTitle() %></td>
        <td><%= annonce.getDescription() %></td>
        <td><%= annonce.getAdress() %></td>
        <td><%= annonce.getMail() %></td>
        <td>
          <a href="AnnonceUpdate.jsp?id=<%= annonce.getId() %>" class="btn btn-sm btn-warning"> Modifier</a>
          <a href="AnnonceDelete?id=<%= annonce.getId() %>" class="btn btn-sm btn-danger"
             onclick="return confirm('⚠ Supprimer cette annonce ?');"> Supprimer</a>
        </td>
      </tr>
      <%
        }
      } catch (Exception e) {
      %>
      <tr>
        <td colspan="6" class="text-danger text-center"> Erreur lors du chargement des annonces</td>
      </tr>
      <%
        }
      %>
      </tbody>
    </table>
  </div>
</div>

</body>
</html>
