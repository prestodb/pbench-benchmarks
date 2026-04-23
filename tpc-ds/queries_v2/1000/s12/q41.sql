-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 706 and 706+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'snow' or i_color = 'burnished') and 
        (i_units = 'Dozen' or i_units = 'Bunch') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'navajo' or i_color = 'papaya') and
        (i_units = 'N/A' or i_units = 'Case') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'lawn' or i_color = 'metallic') and
        (i_units = 'Gross' or i_units = 'Ounce') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'sienna' or i_color = 'brown') and
        (i_units = 'Tbl' or i_units = 'Tsp') and
        (i_size = 'small' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'medium' or i_color = 'bisque') and 
        (i_units = 'Oz' or i_units = 'Ton') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'magenta' or i_color = 'turquoise') and
        (i_units = 'Bundle' or i_units = 'Gram') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'antique' or i_color = 'misty') and
        (i_units = 'Dram' or i_units = 'Unknown') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'olive' or i_color = 'almond') and
        (i_units = 'Box' or i_units = 'Carton') and
        (i_size = 'small' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
