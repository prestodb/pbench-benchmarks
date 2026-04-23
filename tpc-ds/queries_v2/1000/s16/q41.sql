-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 722 and 722+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'purple' or i_color = 'dark') and 
        (i_units = 'Unknown' or i_units = 'Gram') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'metallic' or i_color = 'blanched') and
        (i_units = 'Carton' or i_units = 'Pound') and
        (i_size = 'small' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'honeydew' or i_color = 'blue') and
        (i_units = 'Cup' or i_units = 'Tsp') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'floral' or i_color = 'sandy') and
        (i_units = 'Oz' or i_units = 'N/A') and
        (i_size = 'N/A' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'hot' or i_color = 'lemon') and 
        (i_units = 'Ounce' or i_units = 'Bunch') and
        (i_size = 'N/A' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'medium' or i_color = 'slate') and
        (i_units = 'Box' or i_units = 'Dozen') and
        (i_size = 'small' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'seashell' or i_color = 'chiffon') and
        (i_units = 'Ton' or i_units = 'Tbl') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'light') and
        (i_units = 'Each' or i_units = 'Dram') and
        (i_size = 'N/A' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
