package com.proxy;
import java.util.HashMap;



public class YouTubeDownloader {
    private ThirdPartyYouTubeLib api;

    public YouTubeDownloader(ThirdPartyYouTubeLib api) {
        this.api = api;
    }

    // Define renderPopularVideos method
    /**
     * Fetches popular videos using the YouTube API and returns them as a map.
     * @return A HashMap where the key is the video ID and the value is the Video object.
     */
    public HashMap<String, Video> renderPopularVideos() {
        // Use the API to fetch popular videos
        return api.popularVideos();
    }

    /**
     * Fetches the video page for a specific video ID and returns the Video object.
     * @param videoId The ID of the video to fetch.
     * @return The Video object corresponding to the videoId.
     */
    public Video renderVideoPage(String videoId) {
        // Use the API to fetch the video page
        return api.getVideo(videoId);
    }

	public Video getVideo(String videoId) {
		// TODO Auto-generated method stub
		return null;
	}
}
