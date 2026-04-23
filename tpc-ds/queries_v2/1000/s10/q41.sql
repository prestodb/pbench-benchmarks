-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 828 and 828+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'smoke' or i_color = 'rose') and 
        (i_units = 'Gram' or i_units = 'Unknown') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'dark' or i_color = 'burnished') and
        (i_units = 'Dram' or i_units = 'Bunch') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'red' or i_color = 'lace') and
        (i_units = 'Bundle' or i_units = 'Gross') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'royal' or i_color = 'pink') and
        (i_units = 'Case' or i_units = 'Tbl') and
        (i_size = 'large' or i_size = 'N/A')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'thistle' or i_color = 'black') and 
        (i_units = 'Ounce' or i_units = 'Carton') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'orange' or i_color = 'cornsilk') and
        (i_units = 'N/A' or i_units = 'Cup') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'violet' or i_color = 'antique') and
        (i_units = 'Oz' or i_units = 'Pound') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'saddle' or i_color = 'blush') and
        (i_units = 'Lb' or i_units = 'Box') and
        (i_size = 'large' or i_size = 'N/A')
        )))) > 0
 order by i_product_name
 limit 100;
