-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 739 and 739+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'spring' or i_color = 'firebrick') and 
        (i_units = 'Bunch' or i_units = 'Pallet') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'plum' or i_color = 'lawn') and
        (i_units = 'N/A' or i_units = 'Each') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'midnight' or i_color = 'lime') and
        (i_units = 'Lb' or i_units = 'Pound') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'khaki' or i_color = 'sandy') and
        (i_units = 'Carton' or i_units = 'Bundle') and
        (i_size = 'medium' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'steel' or i_color = 'royal') and 
        (i_units = 'Unknown' or i_units = 'Dram') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'medium' or i_color = 'purple') and
        (i_units = 'Tsp' or i_units = 'Ounce') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'deep' or i_color = 'ghost') and
        (i_units = 'Oz' or i_units = 'Ton') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'lavender' or i_color = 'dim') and
        (i_units = 'Gross' or i_units = 'Gram') and
        (i_size = 'medium' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
