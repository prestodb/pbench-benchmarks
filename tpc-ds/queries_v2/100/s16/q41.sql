-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 857 and 857+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'turquoise' or i_color = 'indian') and 
        (i_units = 'Lb' or i_units = 'N/A') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'lace' or i_color = 'gainsboro') and
        (i_units = 'Tsp' or i_units = 'Carton') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'sky' or i_color = 'rose') and
        (i_units = 'Cup' or i_units = 'Dozen') and
        (i_size = 'small' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'blush' or i_color = 'olive') and
        (i_units = 'Ounce' or i_units = 'Box') and
        (i_size = 'extra large' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'lemon' or i_color = 'seashell') and 
        (i_units = 'Dram' or i_units = 'Pound') and
        (i_size = 'extra large' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'chiffon' or i_color = 'grey') and
        (i_units = 'Tbl' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'floral' or i_color = 'hot') and
        (i_units = 'Gram' or i_units = 'Each') and
        (i_size = 'small' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'aquamarine' or i_color = 'red') and
        (i_units = 'Gross' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
