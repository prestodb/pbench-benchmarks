-- q41.sql

select  distinct(i_product_name)
 from item i1
 where i_manufact_id between 703 and 703+40 
   and (select count(*) as item_cnt
        from item
        where (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'deep' or i_color = 'saddle') and 
        (i_units = 'Tbl' or i_units = 'N/A') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'burlywood' or i_color = 'dark') and
        (i_units = 'Dram' or i_units = 'Each') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'chiffon' or i_color = 'powder') and
        (i_units = 'Oz' or i_units = 'Box') and
        (i_size = 'economy' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'sandy' or i_color = 'linen') and
        (i_units = 'Bunch' or i_units = 'Pound') and
        (i_size = 'medium' or i_size = 'small')
        ))) or
       (i_manufact = i1.i_manufact and
        ((i_category = 'Women' and 
        (i_color = 'light' or i_color = 'peach') and 
        (i_units = 'Dozen' or i_units = 'Cup') and
        (i_size = 'medium' or i_size = 'small')
        ) or
        (i_category = 'Women' and
        (i_color = 'almond' or i_color = 'slate') and
        (i_units = 'Ton' or i_units = 'Tsp') and
        (i_size = 'large' or i_size = 'extra large')
        ) or
        (i_category = 'Men' and
        (i_color = 'moccasin' or i_color = 'puff') and
        (i_units = 'Bundle' or i_units = 'Gram') and
        (i_size = 'economy' or i_size = 'petite')
        ) or
        (i_category = 'Men' and
        (i_color = 'wheat' or i_color = 'blanched') and
        (i_units = 'Lb' or i_units = 'Gross') and
        (i_size = 'medium' or i_size = 'small')
        )))) > 0
 order by i_product_name
 limit 100;
