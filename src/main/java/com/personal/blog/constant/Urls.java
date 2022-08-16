package com.personal.blog.constant;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
@AllArgsConstructor
public enum Urls {

    GITHUB(1,"https://www.github.com/"),
    GOOGLE(2,"https://www.google.com/ncr");

    private int id;
    private String url;

}
