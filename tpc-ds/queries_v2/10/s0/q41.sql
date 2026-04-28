-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 949 and 949+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'indian' or i_color = 'purple') and 
        (i_units = 'Gross' or i_units = 'Gram') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'ghost' or i_color = 'magenta') and
        (i_units = 'Pallet' or i_units = 'Oz') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'gainsboro' or i_color = 'ivory') and
        (i_units = 'Tsp' or i_units = 'Each') and
        (i_size = 'petite' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'blue' or i_color = 'cornflower') and
        (i_units = 'Carton' or i_units = 'Tbl') and
        (i_size = 'economy' or i_size = 'extra large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cream' or i_color = 'olive') and 
        (i_units = 'N/A' or i_units = 'Dram') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'plum' or i_color = 'mint') and
        (i_units = 'Ounce' or i_units = 'Bundle') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'tan') and
        (i_units = 'Case' or i_units = 'Unknown') and
        (i_size = 'petite' or i_size = 'large')
        ) or
        (i_category = 'Men' and
        (i_color = 'frosted' or i_color = 'red') and
        (i_units = 'Dozen' or i_units = 'Ton') and
        (i_size = 'economy' or i_size = 'extra large')
        )))) > 0
 order by i_product_name
 limit 100;
