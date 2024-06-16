package com.personal.blog.controller;

import com.personal.blog.constant.Urls;
import com.personal.blog.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@Slf4j
@RequestMapping("/demo")
public class DemoController {


    @Autowired
    @Qualifier(value = "okHttpClient")
    private OkHttpClient okHttpClient;

    @Autowired
    IUserService userService;

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

    @GetMapping("/test")
    public String get() {
        String res = userService.getUserInfoById(1L).getAddress();
        log.info(res);
        return res;
    }
}
