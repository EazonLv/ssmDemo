package com.util;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
    public static String getMD5(String pwd) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");//SHA 或者 MD5
        BASE64Encoder base = new BASE64Encoder ();
        String pwdAfter = base.encode(md.digest(pwd.getBytes()));
        return pwdAfter;
    }
    public static boolean match(String md5, String pwd) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");//SHA 或者 MD5
        BASE64Encoder base = new BASE64Encoder ();
        String pwdAfter = base.encode(md.digest(pwd.getBytes()));
        if (pwdAfter.equals(md5)){
            return true;
        }else {
            return false;
        }
    }
}
