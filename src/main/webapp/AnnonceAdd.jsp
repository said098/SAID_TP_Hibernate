<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ajouter une Annonce</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/annonceadd.css">
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
  <h2 class="text-center">Ajouter une Annonce</h2>
  <form action="AnnonceAdd" method="post" class="annonce-form" id="annonceForm">
    <div class="mb-3">
      <label for="title" class="form-label">Titre :</label>
      <input type="text" id="title" name="title" class="form-control" required>
    </div>

    <div class="mb-3">
      <label for="description" class="form-label">Description :</label>
      <textarea id="description" name="description" rows="4" class="form-control" required></textarea>
    </div>

    <div class="mb-3">
      <label for="adress" class="form-label">Adresse :</label>
      <input type="text" id="adress" name="adress" class="form-control" required>
    </div>

    <div class="mb-3">
      <label for="mail" class="form-label">Email :</label>
      <input type="email" id="mail" name="mail" class="form-control" required>
    </div>

    <button type="submit" class="btn-submit">Ajouter</button>
  </form>
</div>

<script>
  document.getElementById("annonceForm").addEventListener("submit", function(event) {
    let title = document.getElementById("title").value.trim();
    let description = document.getElementById("description").value.trim();
    let adress = document.getElementById("adress").value.trim();
    let mail = document.getElementById("mail").value.trim();

    if (title === "" || description === "" || adress === "" || mail === "") {
      alert("Tous les champs sont obligatoires !");
      event.preventDefault();
    }
  });
</script>

</body>
</html>
