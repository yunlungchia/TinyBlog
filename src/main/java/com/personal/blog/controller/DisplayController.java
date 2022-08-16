package com.personal.blog.controller;

import com.personal.blog.constant.Urls;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class DisplayController {


    @Autowired
    @Qualifier(value = "okHttpClient")
    private OkHttpClient okHttpClient;


    @RequestMapping(value = "/display/{id}", method = RequestMethod.GET)
    public String displayContent(@PathVariable("id") int id) throws IOException {

        String url = Urls.GITHUB.getUrl();
        if (Urls.GITHUB.getId() != id) {
            url = Urls.GOOGLE.getUrl();
        }
        return run(url);
    }

    String run(String url) throws IOException {
        Request request = new Request.Builder()
                .url(url)
                .build();
        try (Response response = okHttpClient.newCall(request).execute()) {
            return response.body().string();
        }
    }
}
