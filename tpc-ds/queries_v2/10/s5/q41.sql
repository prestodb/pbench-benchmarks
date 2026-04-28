-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 899 and 899+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'antique' or i_color = 'bisque') and 
        (i_units = 'Lb' or i_units = 'Dram') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'pink' or i_color = 'midnight') and
        (i_units = 'Carton' or i_units = 'Bunch') and
        (i_size = 'medium' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'pale' or i_color = 'aquamarine') and
        (i_units = 'Tbl' or i_units = 'Case') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'chiffon' or i_color = 'linen') and
        (i_units = 'Pound' or i_units = 'Oz') and
        (i_size = 'large' or i_size = 'N/A')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'lemon' or i_color = 'chocolate') and 
        (i_units = 'Dozen' or i_units = 'Pallet') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'turquoise' or i_color = 'sienna') and
        (i_units = 'Tsp' or i_units = 'Bundle') and
        (i_size = 'medium' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'lime' or i_color = 'rose') and
        (i_units = 'Unknown' or i_units = 'Ounce') and
        (i_size = 'economy' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'gainsboro' or i_color = 'frosted') and
        (i_units = 'Cup' or i_units = 'N/A') and
        (i_size = 'large' or i_size = 'N/A')
        )))) > 0
 order by i_product_name
 limit 100;
