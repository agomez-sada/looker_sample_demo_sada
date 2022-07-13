view: time_periods_mysql {

  dimension: time_period  {
    type: string
    # The definitions below assume the last date of the previous month as the end date. change it as per your requirements.
    sql: CASE WHEN ${dim_date_raw} >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)))
          AND ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)))
          THEN 'This Month'
          WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw}  < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month))) THEN 'Last Month'
          WHEN ${dim_date_raw} >=
           DATE_FORMAT((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)),'%Y-01-01') AND
          ${dim_date_raw} <
          DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)
          THEN 'Year to Date'
          END;;
          #need to add more date fields like - Last date of last month, Last day of prevous month, previous year, first day of last month, last eyar etc.
    }

    dimension_group: dim_date {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.date_field ;;
    }

  measure:last_month_count   {
    type: number
    sql: CASE WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month),INTERVAL 1 month)))
          THEN ${count}
          END;;
  }

  measure: count {
    type: count
  }
}

view: time_periods_sf {

  dimension: time_period  {
    type: string
    # The definitions below assume the last date of the previous month as the end date. change it as per your requirements.
    sql: CASE WHEN ${dim_date_raw} >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)))
          AND ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)))
          THEN 'This Month'
          WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw}  < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month))) THEN 'Last Month'
          WHEN ${dim_date_raw} >=
           DATE_FORMAT((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)),'%Y-01-01') AND
          ${dim_date_raw} <
          DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)
          THEN 'Year to Date'
          END;;
          #need to add more date fields like - Last date of last month, Last day of prevous month, previous year, first day of last month, last eyar etc.
    }

    dimension_group: dim_date {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.date_field ;;
    }

    measure:last_month_count   {
      type: number
      sql: CASE WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month),INTERVAL 1 month)))
          THEN ${count}
          END;;
    }

    measure: count {
      type: count
    }
  }

view: time_periods_bq {

  dimension: time_period  {
    type: string
    # The definitions below assume the last date of the previous month as the end date. change it as per your requirements.
    sql: CASE WHEN ${dim_date_raw} >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)))
          AND ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)))
          THEN 'This Month'
          WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw}  < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month))) THEN 'Last Month'
          WHEN ${dim_date_raw} >=
           DATE_FORMAT((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month)),'%Y-01-01') AND
          ${dim_date_raw} <
          DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -1 month),INTERVAL 1 month)
          THEN 'Year to Date'
          END;;
          #need to add more date fields like - Last date of last month, Last day of prevous month, previous year, first day of last month, last eyar etc.
    }

    dimension_group: dim_date {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.date_field ;;
    }

    measure:last_month_count   {
      type: number
      sql: CASE WHEN ${dim_date_raw}  >= ((DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month)))
          AND  ${dim_date_raw} < ((DATE_ADD(DATE_ADD(TIMESTAMP(DATE_FORMAT(CURDATE(),'%Y-%m-01')),INTERVAL -2 month),INTERVAL 1 month)))
          THEN ${count}
          END;;
    }

    measure: count {
      type: count
    }
  }
