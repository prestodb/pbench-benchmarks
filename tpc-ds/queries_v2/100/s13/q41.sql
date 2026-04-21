-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 994 and 994+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'ghost' or i_color = 'papaya') and 
        (i_units = 'Oz' or i_units = 'Case') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'turquoise' or i_color = 'navajo') and
        (i_units = 'Each' or i_units = 'Pallet') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'brown' or i_color = 'purple') and
        (i_units = 'Bunch' or i_units = 'Tsp') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'dodger' or i_color = 'sandy') and
        (i_units = 'Unknown' or i_units = 'Gram') and
        (i_size = 'large' or i_size = 'extra large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'sienna' or i_color = 'medium') and 
        (i_units = 'Lb' or i_units = 'Gross') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'bisque' or i_color = 'rose') and
        (i_units = 'Dram' or i_units = 'Ton') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'honeydew' or i_color = 'peach') and
        (i_units = 'Tbl' or i_units = 'N/A') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'salmon' or i_color = 'drab') and
        (i_units = 'Bundle' or i_units = 'Dozen') and
        (i_size = 'large' or i_size = 'extra large')
        )))) > 0
 order by i_product_name
 limit 100;
