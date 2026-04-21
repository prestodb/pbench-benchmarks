-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 821 and 821+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'chartreuse' or i_color = 'blush') and 
        (i_units = 'N/A' or i_units = 'Each') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'cream' or i_color = 'indian') and
        (i_units = 'Bunch' or i_units = 'Tbl') and
        (i_size = 'N/A' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'brown' or i_color = 'wheat') and
        (i_units = 'Cup' or i_units = 'Bundle') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'seashell' or i_color = 'floral') and
        (i_units = 'Ton' or i_units = 'Dozen') and
        (i_size = 'economy' or i_size = 'extra large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'dodger' or i_color = 'forest') and 
        (i_units = 'Pound' or i_units = 'Oz') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'sky' or i_color = 'dim') and
        (i_units = 'Case' or i_units = 'Tsp') and
        (i_size = 'N/A' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'cornsilk' or i_color = 'light') and
        (i_units = 'Dram' or i_units = 'Ounce') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'steel' or i_color = 'dark') and
        (i_units = 'Pallet' or i_units = 'Gram') and
        (i_size = 'economy' or i_size = 'extra large')
        )))) > 0
 order by i_product_name
 limit 100;
