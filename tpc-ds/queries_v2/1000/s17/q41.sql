-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 823 and 823+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'sandy' or i_color = 'lawn') and 
        (i_units = 'Tbl' or i_units = 'Bundle') and
        (i_size = 'N/A' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'slate' or i_color = 'cornsilk') and
        (i_units = 'Dram' or i_units = 'Ton') and
        (i_size = 'extra large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'blush' or i_color = 'spring') and
        (i_units = 'Each' or i_units = 'Oz') and
        (i_size = 'petite' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'frosted' or i_color = 'steel') and
        (i_units = 'Case' or i_units = 'Bunch') and
        (i_size = 'N/A' or i_size = 'small')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'ghost' or i_color = 'navajo') and 
        (i_units = 'Cup' or i_units = 'Pound') and
        (i_size = 'N/A' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'orange' or i_color = 'sienna') and
        (i_units = 'Box' or i_units = 'Pallet') and
        (i_size = 'extra large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'hot' or i_color = 'forest') and
        (i_units = 'Tsp' or i_units = 'Carton') and
        (i_size = 'petite' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'rose' or i_color = 'lime') and
        (i_units = 'Ounce' or i_units = 'Gross') and
        (i_size = 'N/A' or i_size = 'small')
        )))) > 0
 order by i_product_name
 limit 100;
