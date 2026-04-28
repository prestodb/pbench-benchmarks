-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 117 and 117+10 
             or ss_coupon_amt between 3370 and 3370+1000
             or ss_wholesale_cost between 77 and 77+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 145 and 145+10
          or ss_coupon_amt between 2546 and 2546+1000
          or ss_wholesale_cost between 56 and 56+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 106 and 106+10
          or ss_coupon_amt between 5625 and 5625+1000
          or ss_wholesale_cost between 31 and 31+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 60 and 60+10
          or ss_coupon_amt between 9560 and 9560+1000
          or ss_wholesale_cost between 1 and 1+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 110 and 110+10
          or ss_coupon_amt between 13590 and 13590+1000
          or ss_wholesale_cost between 80 and 80+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 0 and 0+10
          or ss_coupon_amt between 17236 and 17236+1000
          or ss_wholesale_cost between 4 and 4+20)) B6
limit 100;
