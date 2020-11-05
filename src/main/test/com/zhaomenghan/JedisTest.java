package com.zhaomenghan;

import redis.clients.jedis.Jedis;

public class JedisTest {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("localhost");
        System.out.println(jedis.get("1"));
        System.out.println(jedis.get("2"));
        jedis.set("3","河北");
        System.out.println(jedis.get("3"));
    }
}
