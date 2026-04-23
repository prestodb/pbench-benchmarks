-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 740 and 740+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cornsilk' or i_color = 'navajo') and 
        (i_units = 'Ounce' or i_units = 'Pallet') and
        (i_size = 'economy' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'lawn' or i_color = 'powder') and
        (i_units = 'Case' or i_units = 'Tsp') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'dark' or i_color = 'azure') and
        (i_units = 'Carton' or i_units = 'Bundle') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'aquamarine' or i_color = 'gainsboro') and
        (i_units = 'Box' or i_units = 'Dram') and
        (i_size = 'economy' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'thistle' or i_color = 'wheat') and 
        (i_units = 'Ton' or i_units = 'Dozen') and
        (i_size = 'economy' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'sandy' or i_color = 'smoke') and
        (i_units = 'Pound' or i_units = 'Unknown') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'purple' or i_color = 'red') and
        (i_units = 'Gram' or i_units = 'Lb') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'sky' or i_color = 'green') and
        (i_units = 'N/A' or i_units = 'Cup') and
        (i_size = 'economy' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
