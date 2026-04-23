-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 703 and 703+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'lavender' or i_color = 'yellow') and 
        (i_units = 'Dram' or i_units = 'Carton') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'metallic' or i_color = 'pink') and
        (i_units = 'Cup' or i_units = 'Dozen') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'lawn' or i_color = 'maroon') and
        (i_units = 'N/A' or i_units = 'Tbl') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'plum' or i_color = 'medium') and
        (i_units = 'Ounce' or i_units = 'Case') and
        (i_size = 'medium' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'pale' or i_color = 'cream') and 
        (i_units = 'Ton' or i_units = 'Tsp') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'lemon' or i_color = 'misty') and
        (i_units = 'Each' or i_units = 'Bunch') and
        (i_size = 'extra large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'rose' or i_color = 'hot') and
        (i_units = 'Pound' or i_units = 'Box') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'beige' or i_color = 'chartreuse') and
        (i_units = 'Pallet' or i_units = 'Gross') and
        (i_size = 'medium' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
