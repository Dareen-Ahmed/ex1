<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.proxy.Video" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouTube Viewer</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Welcome to YouTube Viewer</h1>
        
        <!-- Form to interact with HomeServlet -->
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <form action="HomeServlet" method="get">
                            <div class="mb-3">
                                <button type="submit" name="action" value="View Popular Videos" class="btn btn-primary w-100 mb-2">
                                    View Popular Videos
                                </button>
                            </div>
                            <div class="mb-3">
                                <input type="text" name="videoId" class="form-control" placeholder="Search for a video by ID" required>
                            </div>
                            <button type="submit" name="action" value="Search Video" class="btn btn-success w-100">
                                Search Video
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
