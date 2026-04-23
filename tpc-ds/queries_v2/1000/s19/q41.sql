-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 925 and 925+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cream' or i_color = 'dodger') and 
        (i_units = 'Tbl' or i_units = 'Box') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'violet' or i_color = 'sky') and
        (i_units = 'Oz' or i_units = 'Unknown') and
        (i_size = 'small' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'plum' or i_color = 'green') and
        (i_units = 'Case' or i_units = 'Tsp') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'hot' or i_color = 'black') and
        (i_units = 'Ton' or i_units = 'Bundle') and
        (i_size = 'N/A' or i_size = 'petite')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'antique' or i_color = 'chiffon') and 
        (i_units = 'Bunch' or i_units = 'N/A') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Women' and
        (i_color = 'ghost' or i_color = 'slate') and
        (i_units = 'Pallet' or i_units = 'Cup') and
        (i_size = 'small' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'lace' or i_color = 'deep') and
        (i_units = 'Dozen' or i_units = 'Gross') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'navajo') and
        (i_units = 'Carton' or i_units = 'Each') and
        (i_size = 'N/A' or i_size = 'petite')
        )))) > 0
 order by i_product_name
 limit 100;
