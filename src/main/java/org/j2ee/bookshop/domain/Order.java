package org.j2ee.bookshop.domain;

import java.sql.Date;

/**
 * Order
 * Created by Liu Yuhui on 2016/1/6.
 */
public class Order {
    public Integer id;

    /* user id */
    public Integer uid;

    public Date orderDate;
    public Double price;

    /* customer info */
    public String name;
    public String address;

    /*
     * order state:
     *   CREATED
     *   PAYED
     *   CANCELED
     */
    public String state;
}
