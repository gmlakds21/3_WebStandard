package Seunghee.bean;

import Seunghee._interface._01_14_05_HelloSpring4Interface05;

public class _01_14_05_HelloSpring4Bean05Kor implements _01_14_05_HelloSpring4Interface05 {

    @Override
    public void sayHello(String msg) {
        System.out.println("안녕하세요, "+msg);
    }
}

