-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 838 and 838+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'lace' or i_color = 'chartreuse') and 
        (i_units = 'Tsp' or i_units = 'Oz') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'honeydew' or i_color = 'maroon') and
        (i_units = 'Pallet' or i_units = 'Gross') and
        (i_size = 'large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'mint' or i_color = 'snow') and
        (i_units = 'Dram' or i_units = 'Bunch') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'ivory' or i_color = 'burnished') and
        (i_units = 'Gram' or i_units = 'Cup') and
        (i_size = 'small' or i_size = 'N/A')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'floral' or i_color = 'thistle') and 
        (i_units = 'Box' or i_units = 'Unknown') and
        (i_size = 'small' or i_size = 'N/A')
        ) or
        (i_category = 'Women' and
        (i_color = 'lavender' or i_color = 'ghost') and
        (i_units = 'Ounce' or i_units = 'Dozen') and
        (i_size = 'large' or i_size = 'economy')
        ) or
        (i_category = 'Men' and
        (i_color = 'wheat' or i_color = 'lemon') and
        (i_units = 'N/A' or i_units = 'Case') and
        (i_size = 'medium' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'almond' or i_color = 'cream') and
        (i_units = 'Carton' or i_units = 'Pound') and
        (i_size = 'small' or i_size = 'N/A')
        )))) > 0
 order by i_product_name
 limit 100;
