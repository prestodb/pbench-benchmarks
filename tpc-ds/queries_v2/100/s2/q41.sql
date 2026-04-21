-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 882 and 882+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'sienna' or i_color = 'frosted') and 
        (i_units = 'Ounce' or i_units = 'Bunch') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'dodger' or i_color = 'snow') and
        (i_units = 'Carton' or i_units = 'Box') and
        (i_size = 'petite' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'chocolate' or i_color = 'tomato') and
        (i_units = 'Pallet' or i_units = 'Oz') and
        (i_size = 'large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'forest' or i_color = 'firebrick') and
        (i_units = 'Unknown' or i_units = 'Dozen') and
        (i_size = 'extra large' or i_size = 'economy')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'mint' or i_color = 'seashell') and 
        (i_units = 'Gross' or i_units = 'Tsp') and
        (i_size = 'extra large' or i_size = 'economy')
        ) or
        (i_category = 'Women' and
        (i_color = 'thistle' or i_color = 'papaya') and
        (i_units = 'Cup' or i_units = 'Dram') and
        (i_size = 'petite' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'lace' or i_color = 'lawn') and
        (i_units = 'Case' or i_units = 'Ton') and
        (i_size = 'large' or i_size = 'small')
        ) or
        (i_category = 'Men' and
        (i_color = 'indian' or i_color = 'coral') and
        (i_units = 'Each' or i_units = 'Bundle') and
        (i_size = 'extra large' or i_size = 'economy')
        )))) > 0
 order by i_product_name
 limit 100;
