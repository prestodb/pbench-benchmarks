-- q28.sql

select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 182 and 182+10 
             or ss_coupon_amt between 12234 and 12234+1000
             or ss_wholesale_cost between 13 and 13+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 118 and 118+10
          or ss_coupon_amt between 4073 and 4073+1000
          or ss_wholesale_cost between 21 and 21+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 174 and 174+10
          or ss_coupon_amt between 10757 and 10757+1000
          or ss_wholesale_cost between 76 and 76+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 135 and 135+10
          or ss_coupon_amt between 1504 and 1504+1000
          or ss_wholesale_cost between 50 and 50+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 11 and 11+10
          or ss_coupon_amt between 7296 and 7296+1000
          or ss_wholesale_cost between 6 and 6+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 141 and 141+10
          or ss_coupon_amt between 12979 and 12979+1000
          or ss_wholesale_cost between 77 and 77+20)) B6
limit 100;
