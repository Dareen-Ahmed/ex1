package com.servlet;

import com.proxy.YouTubeDownloader;
import com.proxy.YouTubeCacheProxy;
import com.proxy.ThirdPartyYouTubeClass;
import com.proxy.Video;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
    // Define a YouTubeDownloader instance with YouTubeCacheProxy
    private YouTubeDownloader smartDownloader = new YouTubeDownloader(new YouTubeCacheProxy());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve action and videoId parameters from request
        String action = request.getParameter("action");
        String videoId = request.getParameter("videoId");

        // Check the action and handle accordingly
        if ("View Popular Videos".equals(action)) {
            // Handle the "View Popular Videos" action
            HashMap<String, Video> popularVideos = smartDownloader.renderPopularVideos();
            // Set popularVideos as a request attribute
            request.setAttribute("videos", popularVideos);
            // Forward to popularVideos.jsp
            request.getRequestDispatcher("/popularVideos.jsp").forward(request, response);
        } else if ("Search Video".equals(action)) {
            // Handle the "Search Video" action
            if (videoId != null && !videoId.isEmpty()) {
                Video video = smartDownloader.getVideo(videoId);
                // Set video as a request attribute
                request.setAttribute("video", video);
                // Forward to videoDetails.jsp
                request.getRequestDispatcher("/videoDetails.jsp").forward(request, response);
            } else {
                // If videoId is null or empty, send a bad request error
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Video ID is required to search for a video.");
            }
        } else {
            // If the action is unknown, send a bad request error
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
        }
    }
}
