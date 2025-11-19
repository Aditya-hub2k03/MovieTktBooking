<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="alert alert-danger shadow-sm rounded-4">
                <h4 class="alert-heading mb-3">Something went wrong</h4>
                <p><c:out value="${errorMessage != null ? errorMessage : 'Unexpected error.'}" /></p>
                <hr/>
                <a href="${pageContext.request.contextPath}/" class="btn btn-outline-light">
                    Back to Home
                </a>
            </div>
        </div>
    </div>
</div>