 view: dynamic_table_selection_1 {

# examples of dynamic table selection
#Ex 1: Select base on parameter value

    sql_table_name:

    {% if environment._parameter_value == 'Dev' %}
  `dev_project.dataset.table_name`
  {% elsif environment._parameter_value == 'Prod' %}
  `prod_project.dataset.table_name`
    {% elsif environment._parameter_value == 'QA' %}
  `dev_project.dataset.table_name`
  {% else %} -- Default to production
  ``dev_project.dataset.table_name`
  {% endif %}
  ;;

      parameter: environment {
        type: unquoted
        default_value: "Prod"
        allowed_value: {
          label: "Dev"
          value: "Dev"
        }

        allowed_value: {
          label: "Prod"
          value: "Prod"
        }
        allowed_value: {
          label: "QA"
          value: "QA"
        }

      }


  }

view: dynamic_table_selection_2 {
#  Ex 2: Select based on Date/Month. Each month a new table will be created for ex: Reporting_0122_agg_table, reporting_1221_agg_table etc.
  sql_table_name: {% assign curmonth = "now" | date:"%m" %}
  {% if curmonth == '01'  %}
  reporting_12{{ "now" | date:"%y" | minus: 1}}_agg_table
  {% elsif curmonth == '11' or curmonth == '12' %}
  reporting_{{ "now" | date:"%m" | minus: 1}}{{ "now" | date:"%y" }}_agg_table
  {% else %}
  reporting_0{{ "now" | date:"%m" | minus: 1}}{{ "now" | date:"%y" }}_agg_table
  {% endif %} ;;

  }

view: dynamic_table_selection_3 {
# examples of dynamic table selection
#  Ex 3: Extension of the above example. Here both the database name and the report name changes.
 # Select based on Date/Month. Each month a new table will be created for ex: Reporting_0122_agg_table, reporting_1221_agg_table etc.
  # db_name is a parameter
  # month_selection.report_month is a filter from another joined  view. report_month is a dimension with values like Jaunray - 2021, February - 2022 etc
  derived_table: {
    sql:  select * from
          {% parameter db_name %}.reporting_{% assign selectedmonth = _filters['month_selection.report_month'] | split: " - " | first
              %}{% case selectedmonth %}
          {% when "January" %}01{%
            when "February" %}02{%
            when "March" %}03{%
            when "April" %}04{%
            when "May" %}05{%
            when "June"%}06{%
            when "July" %}07{%
            when "August" %}08{%
            when "September" %}09{%
            when "October" %}10{%
            when "November" %}11{%
            when "December" %}12{%
            else %}12{%
            endcase %}{{_filters['month_selection.report_month'] | split: " - " | last | minus: 2000}}_agg_table
          ;;
  }

  parameter: db_name {
    type: unquoted
    allowed_value: {
      label: "Dev"
      value: "dev_db" #replace with actual name of the database/schema

    }

    allowed_value: {
      label: "Prod"
      value: "prod_db" #replace with actual name of the database/schema
    }

    default_value: "prod_db" #replace with actual name of the database/schema
  }

  }

  view: dynamic_table_selection_4 {
    # this example shows the table selection based on the parameter value using Union in derived table.


  }
