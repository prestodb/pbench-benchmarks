-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 835 and 835+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'blue' or i_color = 'cornflower') and 
        (i_units = 'Pound' or i_units = 'Pallet') and
        (i_size = 'economy' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'lavender' or i_color = 'cyan') and
        (i_units = 'Oz' or i_units = 'Tsp') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'saddle' or i_color = 'aquamarine') and
        (i_units = 'Ounce' or i_units = 'Unknown') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'antique' or i_color = 'lace') and
        (i_units = 'Gram' or i_units = 'Cup') and
        (i_size = 'economy' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'rose' or i_color = 'goldenrod') and 
        (i_units = 'Bunch' or i_units = 'Tbl') and
        (i_size = 'economy' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'cornsilk' or i_color = 'magenta') and
        (i_units = 'Gross' or i_units = 'Lb') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'olive' or i_color = 'deep') and
        (i_units = 'Carton' or i_units = 'Bundle') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'sandy' or i_color = 'smoke') and
        (i_units = 'Dram' or i_units = 'Ton') and
        (i_size = 'economy' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
