-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 722 and 722+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'khaki' or i_color = 'smoke') and 
        (i_units = 'Lb' or i_units = 'Tbl') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'rose' or i_color = 'gainsboro') and
        (i_units = 'Pound' or i_units = 'Ounce') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'bisque' or i_color = 'pink') and
        (i_units = 'Tsp' or i_units = 'Cup') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'sandy' or i_color = 'coral') and
        (i_units = 'Oz' or i_units = 'Carton') and
        (i_size = 'extra large' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'maroon' or i_color = 'turquoise') and 
        (i_units = 'Pallet' or i_units = 'Bundle') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'midnight' or i_color = 'burnished') and
        (i_units = 'Gram' or i_units = 'N/A') and
        (i_size = 'small' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'royal' or i_color = 'spring') and
        (i_units = 'Bunch' or i_units = 'Case') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'green' or i_color = 'almond') and
        (i_units = 'Each' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
