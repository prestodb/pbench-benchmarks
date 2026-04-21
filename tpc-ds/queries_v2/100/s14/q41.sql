-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 820 and 820+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'plum' or i_color = 'navajo') and 
        (i_units = 'Case' or i_units = 'Ton') and
        (i_size = 'petite' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'peach' or i_color = 'magenta') and
        (i_units = 'Tsp' or i_units = 'Pallet') and
        (i_size = 'N/A' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'drab' or i_color = 'lemon') and
        (i_units = 'Cup' or i_units = 'Lb') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'medium' or i_color = 'aquamarine') and
        (i_units = 'Carton' or i_units = 'Unknown') and
        (i_size = 'petite' or i_size = 'small')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'midnight' or i_color = 'honeydew') and 
        (i_units = 'Dozen' or i_units = 'Gross') and
        (i_size = 'petite' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'violet' or i_color = 'cornflower') and
        (i_units = 'Dram' or i_units = 'Tbl') and
        (i_size = 'N/A' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'steel' or i_color = 'chocolate') and
        (i_units = 'N/A' or i_units = 'Bunch') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Men' and
        (i_color = 'wheat' or i_color = 'orchid') and
        (i_units = 'Ounce' or i_units = 'Oz') and
        (i_size = 'petite' or i_size = 'small')
        )))) > 0
 order by i_product_name
 limit 100;
