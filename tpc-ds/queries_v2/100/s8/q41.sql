-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 860 and 860+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'peru' or i_color = 'grey') and 
        (i_units = 'Gross' or i_units = 'Each') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'pale' or i_color = 'deep') and
        (i_units = 'Oz' or i_units = 'Pound') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'chocolate' or i_color = 'almond') and
        (i_units = 'Box' or i_units = 'Case') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'plum' or i_color = 'thistle') and
        (i_units = 'Bunch' or i_units = 'Dram') and
        (i_size = 'large' or i_size = 'medium')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'misty' or i_color = 'seashell') and 
        (i_units = 'Ounce' or i_units = 'Cup') and
        (i_size = 'large' or i_size = 'medium')
        ) or
        (i_category = 'Women' and
        (i_color = 'brown' or i_color = 'sky') and
        (i_units = 'Tbl' or i_units = 'Tsp') and
        (i_size = 'petite' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'drab' or i_color = 'pink') and
        (i_units = 'Pallet' or i_units = 'Lb') and
        (i_size = 'economy' or i_size = 'N/A')
        ) or
        (i_category = 'Men' and
        (i_color = 'olive' or i_color = 'firebrick') and
        (i_units = 'Unknown' or i_units = 'Ton') and
        (i_size = 'large' or i_size = 'medium')
        )))) > 0
 order by i_product_name
 limit 100;
