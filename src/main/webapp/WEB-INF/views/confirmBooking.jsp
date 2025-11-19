<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm border-0 rounded-4">
                <div class="card-body p-4">
                    <h2 class="mb-4 text-center text-primary fw-bold">Confirm Booking</h2>

                    <c:if test="${not empty booking}">
                        <p class="mb-2">
                            <span class="text-muted">Movie:</span>
                            <strong>${booking.show.movie.title}</strong>
                        </p>
                        <p class="mb-2">
                            <span class="text-muted">Show Time:</span>
                            <strong>${booking.show.showTime}</strong>
                        </p>
                        <p class="mb-2">
                            <span class="text-muted">Seats:</span>
                            <c:forEach var="seat" items="${booking.seats}">
                                <span class="badge bg-success me-1">${seat.seatCode}</span>
                            </c:forEach>
                        </p>
                        <p class="mb-4">
                            <span class="text-muted">Total Amount:</span>
                            <strong>Rs. ${booking.amount}</strong>
                        </p>

                        <form method="post" action="${pageContext.request.contextPath}/booking/confirm">
                            <input type="hidden" name="bookingId" value="${booking.id}"/>
                            <div class="d-flex gap-2">
                                <button class="btn btn-success flex-grow-1">
                                    <i class="fa fa-credit-card me-1"></i> Confirm &amp; Pay
                                </button>
                                <a href="${pageContext.request.contextPath}/booking/select/${booking.show.id}"
                                   class="btn btn-outline-secondary">
                                    Cancel
                                </a>
                            </div>
                        </form>
                    </c:if>

                    <c:if test="${empty booking}">
                        <div class="alert alert-warning mt-3 mb-0">
                            Your booking session has expired or is invalid. Please select your seats again.
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>