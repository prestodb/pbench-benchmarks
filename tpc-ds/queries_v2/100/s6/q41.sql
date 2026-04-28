-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 949 and 949+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'turquoise' or i_color = 'peru') and 
        (i_units = 'Lb' or i_units = 'Each') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'papaya' or i_color = 'gainsboro') and
        (i_units = 'Ton' or i_units = 'Dozen') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'indian' or i_color = 'ghost') and
        (i_units = 'Case' or i_units = 'Ounce') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'spring' or i_color = 'firebrick') and
        (i_units = 'Dram' or i_units = 'Bundle') and
        (i_size = 'small' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'smoke' or i_color = 'khaki') and 
        (i_units = 'Pound' or i_units = 'Bunch') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'sienna' or i_color = 'yellow') and
        (i_units = 'Pallet' or i_units = 'Cup') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'blanched' or i_color = 'lime') and
        (i_units = 'Carton' or i_units = 'Tsp') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'violet' or i_color = 'slate') and
        (i_units = 'Unknown' or i_units = 'Box') and
        (i_size = 'small' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
