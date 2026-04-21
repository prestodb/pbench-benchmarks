-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 851 and 851+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'dark' or i_color = 'green') and 
        (i_units = 'Oz' or i_units = 'Unknown') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'steel' or i_color = 'peru') and
        (i_units = 'Ton' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'lace' or i_color = 'thistle') and
        (i_units = 'Box' or i_units = 'Case') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'orange' or i_color = 'cornsilk') and
        (i_units = 'Each' or i_units = 'Lb') and
        (i_size = 'medium' or i_size = 'large')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'violet' or i_color = 'bisque') and 
        (i_units = 'Gross' or i_units = 'Pound') and
        (i_size = 'medium' or i_size = 'large')
        ) or
        (i_category = 'Women' and
        (i_color = 'papaya' or i_color = 'plum') and
        (i_units = 'Ounce' or i_units = 'Bunch') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'cream' or i_color = 'slate') and
        (i_units = 'Cup' or i_units = 'Bundle') and
        (i_size = 'extra large' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'light' or i_color = 'indian') and
        (i_units = 'Tbl' or i_units = 'Carton') and
        (i_size = 'medium' or i_size = 'large')
        )))) > 0
 order by i_product_name
 limit 100;
