-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 876 and 876+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'brown' or i_color = 'lemon') and 
        (i_units = 'Case' or i_units = 'Tsp') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'chiffon' or i_color = 'indian') and
        (i_units = 'Ounce' or i_units = 'Pound') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'turquoise' or i_color = 'blush') and
        (i_units = 'Ton' or i_units = 'Lb') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'tan' or i_color = 'black') and
        (i_units = 'Bunch' or i_units = 'Tbl') and
        (i_size = 'large' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'wheat' or i_color = 'mint') and 
        (i_units = 'Dozen' or i_units = 'Carton') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'thistle' or i_color = 'honeydew') and
        (i_units = 'Gram' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'smoke' or i_color = 'gainsboro') and
        (i_units = 'Each' or i_units = 'Unknown') and
        (i_size = 'small' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'papaya' or i_color = 'royal') and
        (i_units = 'N/A' or i_units = 'Cup') and
        (i_size = 'large' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
