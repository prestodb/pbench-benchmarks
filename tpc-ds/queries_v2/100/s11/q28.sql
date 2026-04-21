-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 161 and 161+10 
             or ss_coupon_amt between 1876 and 1876+1000
             or ss_wholesale_cost between 61 and 61+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 158 and 158+10
          or ss_coupon_amt between 922 and 922+1000
          or ss_wholesale_cost between 50 and 50+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 54 and 54+10
          or ss_coupon_amt between 12976 and 12976+1000
          or ss_wholesale_cost between 29 and 29+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 20 and 20+10
          or ss_coupon_amt between 15254 and 15254+1000
          or ss_wholesale_cost between 53 and 53+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 3 and 3+10
          or ss_coupon_amt between 10551 and 10551+1000
          or ss_wholesale_cost between 14 and 14+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 10 and 10+10
          or ss_coupon_amt between 1273 and 1273+1000
          or ss_wholesale_cost between 63 and 63+20)) B6
limit 100;
