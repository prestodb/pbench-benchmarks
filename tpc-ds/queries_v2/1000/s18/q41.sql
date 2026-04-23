-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 775 and 775+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'navajo' or i_color = 'lavender') and 
        (i_units = 'Carton' or i_units = 'Gram') and
        (i_size = 'medium' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'aquamarine' or i_color = 'dim') and
        (i_units = 'Pallet' or i_units = 'Tsp') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'rosy' or i_color = 'puff') and
        (i_units = 'N/A' or i_units = 'Oz') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'medium' or i_color = 'seashell') and
        (i_units = 'Pound' or i_units = 'Ounce') and
        (i_size = 'medium' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'papaya' or i_color = 'plum') and 
        (i_units = 'Unknown' or i_units = 'Lb') and
        (i_size = 'medium' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'royal' or i_color = 'coral') and
        (i_units = 'Tbl' or i_units = 'Case') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'chiffon' or i_color = 'indian') and
        (i_units = 'Dozen' or i_units = 'Each') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'burnished' or i_color = 'sandy') and
        (i_units = 'Bundle' or i_units = 'Bunch') and
        (i_size = 'medium' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
