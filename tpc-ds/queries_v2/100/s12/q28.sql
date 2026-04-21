-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 116 and 116+10 
             or ss_coupon_amt between 295 and 295+1000
             or ss_wholesale_cost between 28 and 28+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 37 and 37+10
          or ss_coupon_amt between 9269 and 9269+1000
          or ss_wholesale_cost between 30 and 30+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 34 and 34+10
          or ss_coupon_amt between 3929 and 3929+1000
          or ss_wholesale_cost between 55 and 55+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 11 and 11+10
          or ss_coupon_amt between 16344 and 16344+1000
          or ss_wholesale_cost between 40 and 40+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 92 and 92+10
          or ss_coupon_amt between 370 and 370+1000
          or ss_wholesale_cost between 47 and 47+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 132 and 132+10
          or ss_coupon_amt between 9672 and 9672+1000
          or ss_wholesale_cost between 67 and 67+20)) B6
limit 100;
