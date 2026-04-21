-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 920 and 920+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'ivory' or i_color = 'beige') and 
        (i_units = 'Pound' or i_units = 'Ounce') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'bisque' or i_color = 'orange') and
        (i_units = 'Unknown' or i_units = 'Bundle') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'spring' or i_color = 'midnight') and
        (i_units = 'Each' or i_units = 'Box') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'chartreuse' or i_color = 'medium') and
        (i_units = 'Case' or i_units = 'Dram') and
        (i_size = 'medium' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'chiffon' or i_color = 'misty') and 
        (i_units = 'Tbl' or i_units = 'Ton') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'purple' or i_color = 'green') and
        (i_units = 'Bunch' or i_units = 'Gram') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'slate' or i_color = 'navajo') and
        (i_units = 'Tsp' or i_units = 'Lb') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'lawn' or i_color = 'royal') and
        (i_units = 'N/A' or i_units = 'Pallet') and
        (i_size = 'medium' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
