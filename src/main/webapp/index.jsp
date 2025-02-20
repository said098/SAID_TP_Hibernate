<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<%@ include file="navbar.jsp" %>

<div class="container text-center mt-5">
    <h2 class="text-primary">Bienvenue sur MasterAnnonce</h2>
    <p>Gérez vos annonces en toute simplicité !</p>
    <a href="AnnonceList.jsp" class="btn btn-primary">📋 Voir les Annonces</a>
    <a href="AnnonceAdd.jsp" class="btn btn-success">➕ Ajouter une Annonce</a>
</div>
</body>
</html>
