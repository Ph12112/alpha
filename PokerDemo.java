package com.jin.PokerGame;


import com.sun.jdi.ArrayReference;

import java.util.ArrayList;
import java.util.Collections;

public class PokerDemo {
    public static void main(String[] args) {

        //创造牌盒
        ArrayList<Poker> pokers = new ArrayList<>();
        //准备花色和点数
        int[] flowers = {1, 2, 3, 4}; //花色
        int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}; //点数
        //通过for制作牌,并放入牌盒
        for (int i = 0; i < numbers.length; i++) {
            for (int j = 0; j < flowers.length; j++) {
                Poker poker = new Poker(flowers[j], numbers[i]);//创建对象
                pokers.add(poker);
            }
        }
        // System.out.println(pokers);
        Collections.shuffle(pokers);   //洗牌(对集合里的元素随机替换）
        System.out.println(pokers);
        //定义三个集合装两个玩家和一个牌堆
        ArrayList<Poker> pokers1 = new ArrayList<>();
        ArrayList<Poker> pokersA = new ArrayList<>();
        ArrayList<Poker> pokersB = new ArrayList<>();
        int i = 0;
        Poker poker = pokers.get(i++);

        /*
        for(i ; i < 52 ; ){
            int m = 0;
            if(m == 0){
                System.out.println("玩家A回合：");
                if(pokersA.size() == 0)
                {

                }
            }
        }
        */

    }
}
