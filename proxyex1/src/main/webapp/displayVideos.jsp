<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.proxy.Video" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Popular Videos</title>
    <!-- Include Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container my-4">
        <h2 class="text-center">Popular Videos</h2>
        <%
            // Retrieve the list of popular videos from the request
            HashMap<String, Video> videos = (HashMap<String, Video>) request.getAttribute("videos");
            if (videos != null && !videos.isEmpty()) {
        %>
            <ul class="list-group mt-4">
                <%
                // Iterate through the videos and display each one
                for (Video video : videos.values()) {
                %>
                    <li class="list-group-item">
                        <strong>Title:</strong> <%= video.title %> 
                        (<strong>ID:</strong> <%= video.id %>)
                        <a href="HomeServlet?action=Search%20Video&videoId=<%= video.id %>" class="btn btn-link">
                            View Video Details
                        </a>
                    </li>
                <%
                }
                %>
            </ul>
        <%
            } else {
        %>
            <!-- Display a warning message if no popular videos are found -->
            <div class="alert alert-warning mt-4" role="alert">
                No popular videos found.
            </div>
        <%
            }
        %>
    </div>
    <!-- Include Bootstrap JS for interactivity -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
