-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 783 and 783+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'antique' or i_color = 'maroon') and 
        (i_units = 'Bunch' or i_units = 'Oz') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'sky' or i_color = 'chiffon') and
        (i_units = 'Cup' or i_units = 'Ounce') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'yellow') and
        (i_units = 'Bundle' or i_units = 'Gross') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'moccasin' or i_color = 'tan') and
        (i_units = 'N/A' or i_units = 'Case') and
        (i_size = 'N/A' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'chocolate' or i_color = 'cornflower') and 
        (i_units = 'Carton' or i_units = 'Dram') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'navajo' or i_color = 'pale') and
        (i_units = 'Box' or i_units = 'Tsp') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'indian' or i_color = 'orchid') and
        (i_units = 'Ton' or i_units = 'Dozen') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'mint' or i_color = 'bisque') and
        (i_units = 'Unknown' or i_units = 'Lb') and
        (i_size = 'N/A' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
