<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
  <div class="container">
    <a class="navbar-brand fw-bold" href="index.jsp"> MasterAnnonce</a>
    <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="AnnonceList.jsp"> Voir les Annonces</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AnnonceAdd.jsp"> Ajouter une Annonce</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/navbar.css">
