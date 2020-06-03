package com.test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Encoder;


public class Test {

    public static String getMD5(String pwd) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");//SHA 或者 MD5
        BASE64Encoder  base = new BASE64Encoder ();
        String pwdAfter = base.encode(md.digest(pwd.getBytes()));
        return pwdAfter;
    }

    public static void main(String[] args) throws NoSuchAlgorithmException {
        String pwd = getMD5("l88886883");
        System.out.println(pwd);
    }
}
