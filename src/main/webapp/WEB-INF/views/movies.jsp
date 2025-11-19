<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Now Showing</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(to bottom right, #0d0d11, #1a1a23);
            color: #f4f4f4;
            min-height: 100vh;
            padding-bottom: 40px;
        }

        h2 {
            font-weight: 700;
            color: #ff865c;
            text-shadow: 0 2px 8px rgba(255, 133, 92, 0.4);
            margin-bottom: 30px;
            letter-spacing: 1px;
        }

        /* Search Box */
        .search-box {
            max-width: 450px;
            margin: 0 auto 25px auto;
        }

        .search-box input {
            border-radius: 12px;
            padding-left: 16px;
            border: 1px solid #444;
            background: #1f1f29;
            color: #fff;
        }

        .search-box input::placeholder {
            color: #bfbfbf;
        }

        .search-btn {
            border-radius: 12px;
            padding: 8px 20px;
            font-weight: 500;
            background: linear-gradient(135deg, #ff865c, #ff4e50);
            border: none;
            color: #fff;
            box-shadow: 0 4px 10px rgba(255, 88, 72, 0.4);
        }

        .search-btn:hover {
            opacity: 0.85;
        }

        /* Movie Cards */
        .movie-card {
            border-radius: 18px;
            overflow: hidden;
            transition: transform .25s ease, box-shadow .25s ease;
            background: #1e1e27;
            border: 1px solid #2b2b36;
            box-shadow: 0 5px 18px rgba(0, 0, 0, 0.35);
        }

        .movie-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.45);
        }

        .movie-card img {
            height: 340px;
            object-fit: cover;
            border-bottom: 1px solid #2b2b36;
        }

        .card-title {
            color: #ffb09c;
        }

        .card-text {
            color: #cccccc;
        }

        .view-show-btn {
            border-radius: 16px;
            padding: 6px 16px;
            background: transparent;
            border: 1px solid #ff865c;
            color: #ff865c;
            font-weight: 500;
            transition: .3s;
        }

        .view-show-btn:hover {
            background: #ff865c;
            color: #1a1a23;
        }

        .alert-info {
            background: #ff865c;
            color: #1a1a23;
            font-weight: 600;
            border-radius: 12px;
            border: none;
        }
    </style>
</head>

<body>

<div class="container mt-5">

    <h2 class="text-center">🔥 Now Showing</h2>

    <!-- Search Form -->
    <form method="get" action="${pageContext.request.contextPath}/movies"
          class="d-flex search-box">

        <input type="text" name="search" value="${search}"
               placeholder="Search movies..."
               class="form-control me-2">

        <button type="submit" class="btn search-btn">Search</button>
    </form>

    <!-- Movie Cards -->
    <div class="row mt-4">
        <c:forEach var="m" items="${movies}">
            <div class="col-md-3 col-sm-6 mb-4">
                <div class="card movie-card">

                    <c:if test="${not empty m.posterUrl}">
                        <img src="${m.posterUrl}"
                             class="card-img-top"
                             alt="${m.title}">
                    </c:if>

                    <div class="card-body">
                        <h5 class="card-title fw-semibold">${m.title}</h5>

                        <p class="card-text" style="font-size: 0.9rem;">
                            <strong>Language:</strong> ${m.language}<br>
                            <strong>Genre:</strong> ${m.genre}<br>
                            <strong>Duration:</strong> ${m.duration} min
                        </p>

                        <a href="${pageContext.request.contextPath}/movies/${m.id}/shows"
                           class="btn view-show-btn">
                            View Showtimes
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <c:if test="${empty movies}">
        <div class="alert alert-info text-center mt-4">
            No movies found!
        </div>
    </c:if>

</div>

</body>
</html>
