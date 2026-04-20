-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 4 and 4+10 
             or ss_coupon_amt between 8976 and 8976+1000
             or ss_wholesale_cost between 34 and 34+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 110 and 110+10
          or ss_coupon_amt between 12135 and 12135+1000
          or ss_wholesale_cost between 67 and 67+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 86 and 86+10
          or ss_coupon_amt between 526 and 526+1000
          or ss_wholesale_cost between 11 and 11+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 84 and 84+10
          or ss_coupon_amt between 8616 and 8616+1000
          or ss_wholesale_cost between 17 and 17+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 60 and 60+10
          or ss_coupon_amt between 8276 and 8276+1000
          or ss_wholesale_cost between 70 and 70+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 176 and 176+10
          or ss_coupon_amt between 12060 and 12060+1000
          or ss_wholesale_cost between 29 and 29+20)) B6
limit 100;
