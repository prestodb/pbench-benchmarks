-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 744 and 744+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'snow' or i_color = 'cornflower') and 
        (i_units = 'Tbl' or i_units = 'N/A') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'dodger' or i_color = 'beige') and
        (i_units = 'Ounce' or i_units = 'Dram') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'steel' or i_color = 'orchid') and
        (i_units = 'Gross' or i_units = 'Each') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'rosy' or i_color = 'sky') and
        (i_units = 'Pound' or i_units = 'Case') and
        (i_size = 'petite' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'cyan' or i_color = 'drab') and 
        (i_units = 'Gram' or i_units = 'Oz') and
        (i_size = 'petite' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'navy' or i_color = 'goldenrod') and
        (i_units = 'Box' or i_units = 'Unknown') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'cornsilk' or i_color = 'violet') and
        (i_units = 'Bundle' or i_units = 'Bunch') and
        (i_size = 'large' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'smoke' or i_color = 'mint') and
        (i_units = 'Dozen' or i_units = 'Pallet') and
        (i_size = 'petite' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
