-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 94 and 94+10 
             or ss_coupon_amt between 10241 and 10241+1000
             or ss_wholesale_cost between 14 and 14+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 50 and 50+10
          or ss_coupon_amt between 12448 and 12448+1000
          or ss_wholesale_cost between 56 and 56+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 30 and 30+10
          or ss_coupon_amt between 17232 and 17232+1000
          or ss_wholesale_cost between 7 and 7+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 62 and 62+10
          or ss_coupon_amt between 15550 and 15550+1000
          or ss_wholesale_cost between 25 and 25+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 169 and 169+10
          or ss_coupon_amt between 17357 and 17357+1000
          or ss_wholesale_cost between 65 and 65+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 32 and 32+10
          or ss_coupon_amt between 17679 and 17679+1000
          or ss_wholesale_cost between 4 and 4+20)) B6
limit 100;
