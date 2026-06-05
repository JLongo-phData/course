with fct_reviews as (
    select * from {{ref('fct_reviews')}}
),
dim_listing as (
    select * FROM {{ref('dim_listings_cleansed')}}
)

SELECT r.* FROM fct_reviews r
INNER JOIN dim_listing l on r.listing_id=l.listing_id
where r.review_date < l.created_at