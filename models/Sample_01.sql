SELECT 
        s.Census_Name_2016,
        Median_rent_weekly,
        Median_tot_hhd_inc_weekly,
        Average_household_size,
        Median_mortgage_repay_monthly
FROM    G02 t
        INNER JOIN structures s
        ON
        (
            t.SSC_CODE_2016 = s.Census_Code_2016
        )
WHERE   s.ASGS_Structure = 'SSC'
        and s.Census_Name_2016 = 'Mawson Lakes'