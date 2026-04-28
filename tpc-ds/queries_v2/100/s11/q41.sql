-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 963 and 963+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'sienna' or i_color = 'orange') and 
        (i_units = 'Cup' or i_units = 'Ounce') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'rose' or i_color = 'blanched') and
        (i_units = 'Bunch' or i_units = 'Unknown') and
        (i_size = 'petite' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'rosy' or i_color = 'tan') and
        (i_units = 'Each' or i_units = 'Box') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'cornflower' or i_color = 'smoke') and
        (i_units = 'Bundle' or i_units = 'Gram') and
        (i_size = 'economy' or i_size = 'extra large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'turquoise' or i_color = 'salmon') and 
        (i_units = 'Tbl' or i_units = 'Gross') and
        (i_size = 'economy' or i_size = 'extra large')
        ) or
        (i_category = 'Women' and
        (i_color = 'grey' or i_color = 'green') and
        (i_units = 'Carton' or i_units = 'Lb') and
        (i_size = 'petite' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'wheat' or i_color = 'navy') and
        (i_units = 'Dozen' or i_units = 'Pallet') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'light' or i_color = 'chiffon') and
        (i_units = 'Case' or i_units = 'Oz') and
        (i_size = 'economy' or i_size = 'extra large')
        )))) > 0
 order by i_product_name
 limit 100;
