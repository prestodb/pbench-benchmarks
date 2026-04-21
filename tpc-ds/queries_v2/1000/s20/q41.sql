-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 781 and 781+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'smoke' or i_color = 'burnished') and 
        (i_units = 'Lb' or i_units = 'Gross') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'indian' or i_color = 'pale') and
        (i_units = 'Gram' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'mint' or i_color = 'maroon') and
        (i_units = 'Case' or i_units = 'Bundle') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'floral' or i_color = 'red') and
        (i_units = 'N/A' or i_units = 'Cup') and
        (i_size = 'medium' or i_size = 'small')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'beige' or i_color = 'antique') and 
        (i_units = 'Tsp' or i_units = 'Box') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'olive' or i_color = 'yellow') and
        (i_units = 'Pound' or i_units = 'Pallet') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'khaki' or i_color = 'drab') and
        (i_units = 'Bunch' or i_units = 'Carton') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'frosted' or i_color = 'burlywood') and
        (i_units = 'Dozen' or i_units = 'Ton') and
        (i_size = 'medium' or i_size = 'small')
        )))) > 0
 order by i_product_name
 limit 100;
