package com;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class mianshi01 {
    public static void main(String[] args) {
        Integer[] arr = new Integer[500000];
        for (int i = 0; i < 500000; i++) {
            arr[i] = i;
        }
        Long startTime = System.nanoTime();
        Set<Integer> set = f(arr);
        Long endTime = System.nanoTime();
        System.out.println((endTime - startTime) + "纳秒");
        System.out.println(set.size());
    }
    public static Set<Integer> f(Integer[] arr) {
        int[] booleans = new int[arr.length];
        Set<Integer> set = new HashSet<Integer>();
        int i = 0;
        Random random = new Random();
        while (set.size() < 100000) {
            i = random.nextInt(500000);
            if (booleans[i] == 1) {
                continue;
            }
            booleans[i] = 1;
            set.add(arr[i]);
        }
        return set;
    }
}

