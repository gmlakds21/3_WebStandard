package Seunghee.bean;

import Seunghee._interface._01_14_04_HelloSpring4Interface04;

public class _01_14_04_HelloSpring4Bean04Kor implements _01_14_04_HelloSpring4Interface04 {

    @Override
    public void sayHello(String msg) {
        System.out.println("안녕하세요, "+msg);
    }
}

