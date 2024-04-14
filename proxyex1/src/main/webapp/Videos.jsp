<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.proxy.Video" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Video Details</title>
    <!-- Include Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container my-4">
        <%
            // Retrieve the video attribute from the request
            Video video = (Video) request.getAttribute("video");
            
            if (video != null) {
        %>
            <h2 class="text-center">Video Details</h2>
            <!-- Display video details -->
            <div class="card shadow-sm mt-4">
                <div class="card-header">
                    <h5 class="card-title"><strong>Title:</strong> <%= video.title %></h5>
                </div>
                <div class="card-body">
                    <!-- Embed video using iframe (YouTube URL with video ID) -->
                    <div class="ratio ratio-16x9 mb-3">
                        <iframe src="https://www.youtube.com/embed/<%= video.id %>" allowfullscreen></iframe>
                    </div>
                    <p><strong>Video ID:</strong> <%= video.id %></p>
                    <p><strong>Description:</strong> <%= video.data %></p>
                </div>
            </div>
        <%
            } else {
                // If video is not found, display an alert
        %>
            <div class="alert alert-warning mt-4" role="alert">
                Video not found.
            </div>
        <%
            }
        %>
    </div>
    <!-- Include Bootstrap JS for interactivity -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>

