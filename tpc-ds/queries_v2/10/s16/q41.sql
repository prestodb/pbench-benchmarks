-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 777 and 777+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'bisque' or i_color = 'coral') and 
        (i_units = 'Unknown' or i_units = 'Cup') and
        (i_size = 'large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'peach' or i_color = 'salmon') and
        (i_units = 'Bunch' or i_units = 'Bundle') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'olive' or i_color = 'ivory') and
        (i_units = 'N/A' or i_units = 'Dram') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'azure' or i_color = 'lavender') and
        (i_units = 'Carton' or i_units = 'Gross') and
        (i_size = 'large' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'midnight' or i_color = 'navajo') and 
        (i_units = 'Gram' or i_units = 'Box') and
        (i_size = 'large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'red' or i_color = 'ghost') and
        (i_units = 'Dozen' or i_units = 'Lb') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'violet' or i_color = 'orchid') and
        (i_units = 'Ton' or i_units = 'Oz') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'misty' or i_color = 'maroon') and
        (i_units = 'Pound' or i_units = 'Each') and
        (i_size = 'large' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
