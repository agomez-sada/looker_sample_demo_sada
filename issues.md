---
title: Issues - 121⛔ 0⚠️  
navigation: true
---

<p style="text-align:right;color:#cccs">
<<<<<<< HEAD
Generated Fri, 11 Mar 2022 18:01:56 GMT
=======
Generated Fri, 11 Mar 2022 18:02:34 GMT
>>>>>>> branch 'master' of git@github.com:sadasystems/looker_blueprint.git
</p>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:200%;">Issues (121⛔)</summary>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#e2">E2</a>. Primary keys used (8⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:events&#47;join:users </td>
<td>No PKs dimensions used for users in users join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:inventory_items&#47;join:products </td>
<td>No PKs dimensions used for products in products join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:inventory_items&#47;join:distribution_centers </td>
<td>No PKs dimensions used for distribution_centers in distribution_centers join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:order_items&#47;join:inventory_items </td>
<td>No PKs dimensions used for inventory_items in inventory_items join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:order_items&#47;join:users </td>
<td>No PKs dimensions used for users in users join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:order_items&#47;join:products </td>
<td>No PKs dimensions used for products in products join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:order_items&#47;join:distribution_centers </td>
<td>No PKs dimensions used for distribution_centers in distribution_centers join</td>
</tr>
<tr>
<td>⛔</td>
<td>model:looker_blueprint&#47;explore:products&#47;join:distribution_centers </td>
<td>No PKs dimensions used for distribution_centers in distribution_centers join</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f2">F2</a>. No view-labeled fields (6⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:order_id </td>
<td>view:order_items_pop/dimension:order_id contains a field-level view_label "_PoP"</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:wtd_only </td>
<td>view:order_items_pop/dimension:wtd_only contains a field-level view_label "_PoP"</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:mtd_only </td>
<td>view:order_items_pop/dimension:mtd_only contains a field-level view_label "_PoP"</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:ytd_only </td>
<td>view:order_items_pop/dimension:ytd_only contains a field-level view_label "_PoP"</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:sale_price </td>
<td>view:order_items_pop/dimension:sale_price contains a field-level view_label "_PoP"</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;measure:total_sale_price </td>
<td>view:order_items_pop/measure:total_sale_price contains a field-level view_label "_PoP"</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f3">F3</a>. Count fields filtered (12⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;field:count </td>
<td>Type:count measure at view:distribution_centers/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:etl_jobs&#47;field:count </td>
<td>Type:count measure at view:etl_jobs/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;field:count </td>
<td>Type:count measure at view:events/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:count </td>
<td>Type:count measure at view:inventory_items/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:total_orders </td>
<td>Type:count measure at view:order_items/field:total_orders does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:count </td>
<td>Type:count measure at view:order_items/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;field:count </td>
<td>Type:count measure at view:order_items_pop/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:count </td>
<td>Type:count measure at view:products/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_mysql&#47;field:count </td>
<td>Type:count measure at view:time_periods_mysql/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_sf&#47;field:count </td>
<td>Type:count measure at view:time_periods_sf/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_bq&#47;field:count </td>
<td>Type:count measure at view:time_periods_bq/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:count </td>
<td>Type:count measure at view:users/field:count does not have a filter applied</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f4">F4</a>. Description or hidden (84⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;dimension:id </td>
<td>view:distribution_centers/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;dimension:latitude </td>
<td>view:distribution_centers/dimension:latitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;dimension:longitude </td>
<td>view:distribution_centers/dimension:longitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;dimension:name </td>
<td>view:distribution_centers/dimension:name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;measure:count </td>
<td>view:distribution_centers/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:dynamic_table_selection_1&#47;parameter:environment </td>
<td>view:dynamic_table_selection_1/parameter:environment is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:dynamic_table_selection_3&#47;parameter:db_name </td>
<td>view:dynamic_table_selection_3/parameter:db_name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:etl_jobs&#47;dimension:id </td>
<td>view:etl_jobs/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:etl_jobs&#47;measure:count </td>
<td>view:etl_jobs/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:id </td>
<td>view:events/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:browser </td>
<td>view:events/dimension:browser is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:city </td>
<td>view:events/dimension:city is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:country </td>
<td>view:events/dimension:country is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:event_type </td>
<td>view:events/dimension:event_type is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:ip_address </td>
<td>view:events/dimension:ip_address is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:latitude </td>
<td>view:events/dimension:latitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:longitude </td>
<td>view:events/dimension:longitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:os </td>
<td>view:events/dimension:os is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:sequence_number </td>
<td>view:events/dimension:sequence_number is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:session_id </td>
<td>view:events/dimension:session_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:state </td>
<td>view:events/dimension:state is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:traffic_source </td>
<td>view:events/dimension:traffic_source is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:uri </td>
<td>view:events/dimension:uri is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:user_id </td>
<td>view:events/dimension:user_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;dimension:zip </td>
<td>view:events/dimension:zip is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;measure:count </td>
<td>view:events/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:id </td>
<td>view:inventory_items/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:cost </td>
<td>view:inventory_items/dimension:cost is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_brand </td>
<td>view:inventory_items/dimension:product_brand is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_category </td>
<td>view:inventory_items/dimension:product_category is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_department </td>
<td>view:inventory_items/dimension:product_department is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_distribution_center_id </td>
<td>view:inventory_items/dimension:product_distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_id </td>
<td>view:inventory_items/dimension:product_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_name </td>
<td>view:inventory_items/dimension:product_name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_retail_price </td>
<td>view:inventory_items/dimension:product_retail_price is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;dimension:product_sku </td>
<td>view:inventory_items/dimension:product_sku is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;measure:count </td>
<td>view:inventory_items/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:id </td>
<td>view:order_items/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:inventory_item_id </td>
<td>view:order_items/dimension:inventory_item_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:order_id </td>
<td>view:order_items/dimension:order_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:sale_price </td>
<td>view:order_items/dimension:sale_price is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:status </td>
<td>view:order_items/dimension:status is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;dimension:user_id </td>
<td>view:order_items/dimension:user_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;measure:total_orders </td>
<td>view:order_items/measure:total_orders is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;measure:count </td>
<td>view:order_items/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:order_id </td>
<td>view:order_items_pop/dimension:order_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:wtd_only </td>
<td>view:order_items_pop/dimension:wtd_only is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:mtd_only </td>
<td>view:order_items_pop/dimension:mtd_only is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:ytd_only </td>
<td>view:order_items_pop/dimension:ytd_only is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;dimension:sale_price </td>
<td>view:order_items_pop/dimension:sale_price is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items_pop&#47;measure:total_sale_price </td>
<td>view:order_items_pop/measure:total_sale_price is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:id </td>
<td>view:products/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:brand </td>
<td>view:products/dimension:brand is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:category </td>
<td>view:products/dimension:category is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:cost </td>
<td>view:products/dimension:cost is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:department </td>
<td>view:products/dimension:department is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:distribution_center_id </td>
<td>view:products/dimension:distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:name </td>
<td>view:products/dimension:name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:retail_price </td>
<td>view:products/dimension:retail_price is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;dimension:sku </td>
<td>view:products/dimension:sku is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;measure:count </td>
<td>view:products/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_mysql&#47;dimension:time_period </td>
<td>view:time_periods_mysql/dimension:time_period is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_mysql&#47;measure:last_month_count </td>
<td>view:time_periods_mysql/measure:last_month_count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_mysql&#47;measure:count </td>
<td>view:time_periods_mysql/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_sf&#47;dimension:time_period </td>
<td>view:time_periods_sf/dimension:time_period is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_sf&#47;measure:last_month_count </td>
<td>view:time_periods_sf/measure:last_month_count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_sf&#47;measure:count </td>
<td>view:time_periods_sf/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_bq&#47;dimension:time_period </td>
<td>view:time_periods_bq/dimension:time_period is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_bq&#47;measure:last_month_count </td>
<td>view:time_periods_bq/measure:last_month_count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:time_periods_bq&#47;measure:count </td>
<td>view:time_periods_bq/measure:count is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:id </td>
<td>view:users/dimension:id is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:age </td>
<td>view:users/dimension:age is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:city </td>
<td>view:users/dimension:city is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:country </td>
<td>view:users/dimension:country is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:email </td>
<td>view:users/dimension:email is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:first_name </td>
<td>view:users/dimension:first_name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:gender </td>
<td>view:users/dimension:gender is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:last_name </td>
<td>view:users/dimension:last_name is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:latitude </td>
<td>view:users/dimension:latitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:longitude </td>
<td>view:users/dimension:longitude is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:state </td>
<td>view:users/dimension:state is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:traffic_source </td>
<td>view:users/dimension:traffic_source is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;dimension:zip </td>
<td>view:users/dimension:zip is missing a description</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;measure:count </td>
<td>view:users/measure:count is missing a description</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#k1">K1</a>. Primary keys required (11⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view: distribution_centers </td>
<td>No Primary Key Dimensions found in distribution_centers</td>
</tr>
<tr>
<td>⛔</td>
<td>view: dynamic_table_selection_1 </td>
<td>No Primary Key Dimensions found in dynamic_table_selection_1</td>
</tr>
<tr>
<td>⛔</td>
<td>view: dynamic_table_selection_2 </td>
<td>No Primary Key Dimensions found in dynamic_table_selection_2</td>
</tr>
<tr>
<td>⛔</td>
<td>view: dynamic_table_selection_3 </td>
<td>No Primary Key Dimensions found in dynamic_table_selection_3</td>
</tr>
<tr>
<td>⛔</td>
<td>view: etl_jobs </td>
<td>No Primary Key Dimensions found in etl_jobs</td>
</tr>
<tr>
<td>⛔</td>
<td>view: events </td>
<td>No Primary Key Dimensions found in events</td>
</tr>
<tr>
<td>⛔</td>
<td>view: inventory_items </td>
<td>No Primary Key Dimensions found in inventory_items</td>
</tr>
<tr>
<td>⛔</td>
<td>view: order_items </td>
<td>No Primary Key Dimensions found in order_items</td>
</tr>
<tr>
<td>⛔</td>
<td>view: order_items_pop </td>
<td>No Primary Key Dimensions found in order_items_pop</td>
</tr>
<tr>
<td>⛔</td>
<td>view: products </td>
<td>No Primary Key Dimensions found in products</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users </td>
<td>No Primary Key Dimensions found in users</td>
</tr></tbody></table></details></details>


