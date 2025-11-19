<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle != null ? pageTitle : 'Movie Ticket Booking'}" /></title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <!-- Custom Styles -->
<style>
    body {
        background: radial-gradient(circle at top, #0f172a 0, #020617 45%, #020617 100%);
        color: #e5e7eb;
    }
    .container-main {
        padding-top: 80px;
        min-height: 80vh;
    }
    .navbar {
        background: rgba(15,23,42,0.95) !important;
        backdrop-filter: blur(10px);
    }
    .navbar-brand {
        font-weight: 700;
        letter-spacing: 0.08em;
        color: #38bdf8 !important;
    }
    .nav-link {
        color: #e5e7eb !important;
    }
    .nav-link:hover {
        color: #38bdf8 !important;
    }
    .card {
        border-radius: 1rem;
        border: 0;
    }
    .btn-primary {
        background: linear-gradient(90deg, #22c55e, #16a34a);
        border: none;
    }
    .btn-primary:hover {
        filter: brightness(1.05);
    }
    footer {
        background: #020617;
        color: #9ca3af;
    }
</style>
</head>
<body>
