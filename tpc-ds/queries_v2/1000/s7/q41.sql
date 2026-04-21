-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 937 and 937+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'chocolate' or i_color = 'light') and 
        (i_units = 'Bundle' or i_units = 'Dozen') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'red' or i_color = 'deep') and
        (i_units = 'Pound' or i_units = 'Cup') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'blush' or i_color = 'olive') and
        (i_units = 'Tsp' or i_units = 'Dram') and
        (i_size = 'medium' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'tomato' or i_color = 'midnight') and
        (i_units = 'Gross' or i_units = 'Tbl') and
        (i_size = 'small' or i_size = 'N/A')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'papaya' or i_color = 'sandy') and 
        (i_units = 'Lb' or i_units = 'Bunch') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'sky' or i_color = 'thistle') and
        (i_units = 'Carton' or i_units = 'Box') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'sienna' or i_color = 'medium') and
        (i_units = 'Each' or i_units = 'Ounce') and
        (i_size = 'medium' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'peach' or i_color = 'goldenrod') and
        (i_units = 'N/A' or i_units = 'Oz') and
        (i_size = 'small' or i_size = 'N/A')
        )))) > 0
 order by i_product_name
 limit 100;
