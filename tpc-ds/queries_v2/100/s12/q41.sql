-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 854 and 854+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'bisque' or i_color = 'sandy') and 
        (i_units = 'Pound' or i_units = 'Tsp') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'chiffon' or i_color = 'cornflower') and
        (i_units = 'Tbl' or i_units = 'N/A') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'cream') and
        (i_units = 'Dram' or i_units = 'Bunch') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'cornsilk' or i_color = 'navy') and
        (i_units = 'Carton' or i_units = 'Dozen') and
        (i_size = 'extra large' or i_size = 'petite')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'tan' or i_color = 'gainsboro') and 
        (i_units = 'Lb' or i_units = 'Oz') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'turquoise' or i_color = 'lemon') and
        (i_units = 'Case' or i_units = 'Unknown') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'blush' or i_color = 'azure') and
        (i_units = 'Gram' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'navajo' or i_color = 'blue') and
        (i_units = 'Bundle' or i_units = 'Gross') and
        (i_size = 'extra large' or i_size = 'petite')
        )))) > 0
 order by i_product_name
 limit 100;
