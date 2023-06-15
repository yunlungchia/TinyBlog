package com.personal.blog.po;

import lombok.Builder;
import lombok.Data;

import java.util.Date;

@Data
@Builder
public class User {
    private Long id;

    private String username;

    private String password;

    private String salt;

    private String email;

    private String address;

    private Date registerDate;
}