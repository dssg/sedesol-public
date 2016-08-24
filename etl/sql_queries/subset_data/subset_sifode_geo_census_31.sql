
    /* first, include the manzana link in sifode data */
    -- CREATE INDEX semantic_pub_imputation_sifode_manzana_link_pub_id_idx ON semantic_pub_imputation.sifode(sifode_pub_id);
    -- CREATE INDEX clean_manzana_link_pub_id_idx ON clean.manzana_link(sifode_pub_id);

    CREATE TABLE semantic_pub_imputation.sifode_geo_census_subset_31 AS
    (
    WITH manzana_link AS
    (SELECT *
    FROM clean.manzana_link
    ),

    sifode_subset AS
    (
    SELECT *
    FROM
    semantic_pub_imputation.sifode
    WHERE locality_id LIKE '31%'
    ),

    sifode_subset_manzana_id_joined AS
    (
    SELECT * FROM
    sifode_subset
    LEFT JOIN manzana_link
    USING (sifode_pub_id)
    WHERE manzana_id is NOT NULL AND manzana_id != '2801204310683002' 
    ), 

    localidades AS
    (SELECT
    locality_id AS locality_id,
    locality_name AS locality_name,
    municipality_name AS municipality_name,
    state_name AS state_name,
    urban AS localidad_urban,
    population AS localidad_population,
    population_female AS localidad_population_female,
    population_age_0_to_2 AS localidad_population_age_0_to_2,
    population_age_0_to_2_female AS localidad_population_age_0_to_2_female,
    population_age_greater_3 AS localidad_population_age_greater_3,
    population_age_greater_3_female AS localidad_population_age_greater_3_female,
    population_age_greater_5 AS localidad_population_age_greater_5,
    population_age_greater_5_female AS localidad_population_age_greater_5_female,
    population_age_greater_12 AS localidad_population_age_greater_12,
    population_age_greater_12_female AS localidad_population_age_greater_12_female,
    population_age_greater_15 AS localidad_population_age_greater_15,
    population_age_greater_15_female AS localidad_population_age_greater_15_female,
    population_age_greater_18 AS localidad_population_age_greater_18,
    population_age_greater_18_female AS localidad_population_age_greater_18_female,
    population_age_greater_60 AS localidad_population_age_greater_60,
    population_age_greater_60_female AS localidad_population_age_greater_60_female,
    fertility_rate AS localidad_fertility_rate,
    population_born_in_state AS localidad_population_born_in_state,
    population_men_born_in_state AS localidad_population_men_born_in_state,
    population_born_out_of_state AS localidad_population_born_out_of_state,
    population_men_born_out_of_state AS localidad_population_men_born_out_of_state,
    population_immigrant_since_2005 AS localidad_population_immigrant_since_2005,
    population_immigrant_men_since_2005 AS localidad_population_immigrant_men_since_2005,
    population_speak_indigenous AS localidad_population_speak_indigenous,
    population_male_speak_indigenous AS localidad_population_male_speak_indigenous,
    population_not_speak_spanish AS localidad_population_not_speak_spanish,
    population_male_not_speak_spanish AS localidad_population_male_not_speak_spanish,
    population_speak_indigenous_and_spanish AS localidad_population_speak_indigenous_and_spanish,
    population_male_speak_indigenous_and_spanish AS localidad_population_male_speak_indigenous_and_spanish,
    n_indigenous_households AS localidad_n_indigenous_households,
    population_limited_activity AS localidad_population_limited_activity,
    population_limited_mobility AS localidad_population_limited_mobility,
    population_limited_vision AS localidad_population_limited_vision,
    population_limited_speaking AS localidad_population_limited_speaking,
    population_limited_hearing AS localidad_population_limited_hearing,
    population_limited_senility AS localidad_population_limited_senility,
    population_limited_mental AS localidad_population_limited_mental,
    population_ages_3_5_no_school AS localidad_population_ages_3_5_no_school,
    population_male_ages_3_5_no_school AS localidad_population_male_ages_3_5_no_school,
    population_ages_6_11_no_school AS localidad_population_ages_6_11_no_school,
    population_male_ages_6_11_no_school AS localidad_population_male_ages_6_11_no_school,
    population_ages_12_14_no_school AS localidad_population_ages_12_14_no_school,
    population_male_ages_12_14_no_school AS localidad_population_male_ages_12_14_no_school,
    population_ages_15_17_in_school AS localidad_population_ages_15_17_in_school,
    population_male_ages_15_17_in_school AS localidad_population_male_ages_15_17_in_school,
    population_ages_18_24_in_school AS localidad_population_ages_18_24_in_school,
    population_male_ages_18_24_in_school AS localidad_population_male_ages_18_24_in_school,
    population_ages_8_14_illiterate AS localidad_population_ages_8_14_illiterate,
    population_male_ages_8_14_illiterate AS localidad_population_male_ages_8_14_illiterate,
    population_age_over_15_illiterate AS localidad_population_age_over_15_illiterate,
    population_male_age_over_15_illiterate AS localidad_population_male_age_over_15_illiterate,
    population_age_over_15_no_school AS localidad_population_age_over_15_no_school,
    population_male_age_over_15_no_school AS localidad_population_male_age_over_15_no_school,
    population_age_over_15_no_primary_school AS localidad_population_age_over_15_no_primary_school,
    population_male_age_over_15_no_primary_school AS localidad_population_male_age_over_15_no_primary_school,
    population_age_over_15_no_secondary_school AS localidad_population_age_over_15_no_secondary_school,
    population_male_age_over_15_no_secondary_school AS localidad_population_male_age_over_15_no_secondary_school,
    population_age_over_18_basic_schooling AS localidad_population_age_over_18_basic_schooling,
    population_male_age_over_18_basic_schooling AS localidad_population_male_age_over_18_basic_schooling,
    population_economically_active AS localidad_population_economically_active,
    population_male_economically_active AS localidad_population_male_economically_active,
    population_not_economically_active AS localidad_population_not_economically_active,
    population_male_not_economically_active AS localidad_population_male_not_economically_active,
    population_employed AS localidad_population_employed,
    population_male_employed AS localidad_population_male_employed,
    population_unemployed AS localidad_population_unemployed,
    population_male_unemployed AS localidad_population_male_unemployed,
    population_no_health_services AS localidad_population_no_health_services,
    population_entitled_to_health_services AS localidad_population_entitled_to_health_services,
    population_covered_by_imss AS localidad_population_covered_by_imss,
    population_covered_by_issste AS localidad_population_covered_by_issste,
    population_covered_by_state_issste AS localidad_population_covered_by_state_issste,
    population_covered_by_seguro_popular AS localidad_population_covered_by_seguro_popular,
    population_over_12_unmarried AS localidad_population_over_12_unmarried,
    population_over_12_married AS localidad_population_over_12_married,
    population_over_12_divorced AS localidad_population_over_12_divorced,
    population_catholic AS localidad_population_catholic,
    population_other_christian AS localidad_population_other_christian,
    population_other_religions AS localidad_population_other_religions,
    population_non_religious AS localidad_population_non_religious,
    n_census_households AS localidad_n_census_households,
    n_male_head_of_household AS localidad_n_male_head_of_household,
    n_female_head_of_household AS localidad_n_female_head_of_household,
    n_census_persons AS localidad_n_census_persons,
    n_people_private_homes AS localidad_n_people_private_homes,
    average_number_home_occupants AS localidad_average_number_home_occupants,
    average_number_occupants_per_room AS localidad_average_number_occupants_per_room,
    n_different_floor_material AS localidad_n_different_floor_material,
    n_private_homes_dirt_floors AS localidad_n_private_homes_dirt_floors,
    n_homes_with_one_bedroom AS localidad_n_homes_with_one_bedroom,
    n_homes_with_at_least_two_bedrooms AS localidad_n_homes_with_at_least_two_bedrooms,
    n_homes_with_one_room AS localidad_n_homes_with_one_room,
    n_homes_with_two_rooms AS localidad_n_homes_with_two_rooms,
    n_homes_with_three_or_more_rooms AS localidad_n_homes_with_three_or_more_rooms,
    n_homes_with_electricity AS localidad_n_homes_with_electricity,
    n_homes_without_electricity AS localidad_n_homes_without_electricity,
    n_homes_with_plumbing AS localidad_n_homes_with_plumbing,
    n_homes_without_plumbing AS localidad_n_homes_without_plumbing,
    n_homes_with_toilet AS localidad_n_homes_with_toilet,
    n_homes_with_sewage_access AS localidad_n_homes_with_sewage_access,
    n_homes_with_full_infrastructure AS localidad_n_homes_with_full_infrastructure,
    n_homes_without_any_goods AS localidad_n_homes_without_any_goods,
    n_homes_with_radio AS localidad_n_homes_with_radio,
    n_homes_with_tv AS localidad_n_homes_with_tv,
    n_homes_with_refigerador AS localidad_n_homes_with_refigerador,
    n_homes_with_washing_machine AS localidad_n_homes_with_washing_machine,
    n_homes_with_car AS localidad_n_homes_with_car,
    n_homes_with_computer AS localidad_n_homes_with_computer,
    n_homes_with_telephone AS localidad_n_homes_with_telephone,
    n_homes_with_cell_hone AS localidad_n_homes_with_cell_hone,
    n_homes_with_internet AS localidad_n_homes_with_internet,
    n_households_in_poverty AS localidad_n_households_in_poverty,
    n_people_in_poverty AS localidad_n_people_in_poverty,
    n_housholds_without_basic_housing_services AS localidad_n_housholds_without_basic_housing_services,
    n_people_without_basic_housing_services AS localidad_n_people_without_basic_housing_services,
    n_households_without_water AS localidad_n_households_without_water,
    n_people_without_water AS localidad_n_people_without_water,
    n_households_without_sewage AS localidad_n_households_without_sewage,
    n_people_without_sewage AS localidad_n_people_without_sewage,
    n_households_without_electricity AS localidad_n_households_without_electricity,
    n_people_without_electricity AS localidad_n_people_without_electricity,
    n_households_without_quality_living_space AS localidad_n_households_without_quality_living_space,
    n_people_without_quality_living_space AS localidad_n_people_without_quality_living_space,
    n_households_dirt_floor AS localidad_n_households_dirt_floor,
    n_people_dirt_floor AS localidad_n_people_dirt_floor,
    n_households_overcrowding AS localidad_n_households_overcrowding,
    n_people_overcrowding AS localidad_n_people_overcrowding,
    n_households_no_health AS localidad_n_households_no_health,
    n_people_no_health AS localidad_n_people_no_health,
    n_households_lack_education AS localidad_n_households_lack_education,
    n_people_lack_education AS localidad_n_people_lack_education,
    latitude AS localidad_latitude,
    longitude AS localidad_longitude
    FROM clean.localidades
    WHERE locality_id LIKE '31%'),

    manzanas AS
    (SELECT
    manzana_id AS manzana_id,
    urban AS manzana_urban,
    population AS manzana_population,
    population_female AS manzana_population_female,
    population_age_0_to_2 AS manzana_population_age_0_to_2,
    population_age_0_to_2_female AS manzana_population_age_0_to_2_female,
    population_age_greater_3 AS manzana_population_age_greater_3,
    population_age_greater_3_female AS manzana_population_age_greater_3_female,
    population_age_greater_5 AS manzana_population_age_greater_5,
    population_age_greater_5_female AS manzana_population_age_greater_5_female,
    population_age_greater_12 AS manzana_population_age_greater_12,
    population_age_greater_12_female AS manzana_population_age_greater_12_female,
    population_age_greater_15 AS manzana_population_age_greater_15,
    population_age_greater_15_female AS manzana_population_age_greater_15_female,
    population_age_greater_18 AS manzana_population_age_greater_18,
    population_age_greater_18_female AS manzana_population_age_greater_18_female,
    population_age_greater_60 AS manzana_population_age_greater_60,
    population_age_greater_60_female AS manzana_population_age_greater_60_female,
    fertility_rate AS manzana_fertility_rate,
    population_born_in_state AS manzana_population_born_in_state,
    population_men_born_in_state AS manzana_population_men_born_in_state,
    population_born_out_of_state AS manzana_population_born_out_of_state,
    population_men_born_out_of_state AS manzana_population_men_born_out_of_state,
    population_immigrant_since_2005 AS manzana_population_immigrant_since_2005,
    population_immigrant_men_since_2005 AS manzana_population_immigrant_men_since_2005,
    population_speak_indigenous AS manzana_population_speak_indigenous,
    population_male_speak_indigenous AS manzana_population_male_speak_indigenous,
    population_not_speak_spanish AS manzana_population_not_speak_spanish,
    population_male_not_speak_spanish AS manzana_population_male_not_speak_spanish,
    population_speak_indigenous_and_spanish AS manzana_population_speak_indigenous_and_spanish,
    population_male_speak_indigenous_and_spanish AS manzana_population_male_speak_indigenous_and_spanish,
    n_indigenous_households AS manzana_n_indigenous_households,
    population_limited_activity AS manzana_population_limited_activity,
    population_limited_mobility AS manzana_population_limited_mobility,
    population_limited_vision AS manzana_population_limited_vision,
    population_limited_speaking AS manzana_population_limited_speaking,
    population_limited_hearing AS manzana_population_limited_hearing,
    population_limited_senility AS manzana_population_limited_senility,
    population_limited_mental AS manzana_population_limited_mental,
    population_ages_3_5_no_school AS manzana_population_ages_3_5_no_school,
    population_male_ages_3_5_no_school AS manzana_population_male_ages_3_5_no_school,
    population_ages_6_11_no_school AS manzana_population_ages_6_11_no_school,
    population_male_ages_6_11_no_school AS manzana_population_male_ages_6_11_no_school,
    population_ages_12_14_no_school AS manzana_population_ages_12_14_no_school,
    population_male_ages_12_14_no_school AS manzana_population_male_ages_12_14_no_school,
    population_ages_15_17_in_school AS manzana_population_ages_15_17_in_school,
    population_male_ages_15_17_in_school AS manzana_population_male_ages_15_17_in_school,
    population_ages_18_24_in_school AS manzana_population_ages_18_24_in_school,
    population_male_ages_18_24_in_school AS manzana_population_male_ages_18_24_in_school,
    population_ages_8_14_illiterate AS manzana_population_ages_8_14_illiterate,
    population_male_ages_8_14_illiterate AS manzana_population_male_ages_8_14_illiterate,
    population_age_over_15_illiterate AS manzana_population_age_over_15_illiterate,
    population_male_age_over_15_illiterate AS manzana_population_male_age_over_15_illiterate,
    population_age_over_15_no_school AS manzana_population_age_over_15_no_school,
    population_male_age_over_15_no_school AS manzana_population_male_age_over_15_no_school,
    population_age_over_15_no_primary_school AS manzana_population_age_over_15_no_primary_school,
    population_male_age_over_15_no_primary_school AS manzana_population_male_age_over_15_no_primary_school,
    population_age_over_15_no_secondary_school AS manzana_population_age_over_15_no_secondary_school,
    population_male_age_over_15_no_secondary_school AS manzana_population_male_age_over_15_no_secondary_school,
    population_age_over_18_basic_schooling AS manzana_population_age_over_18_basic_schooling,
    population_male_age_over_18_basic_schooling AS manzana_population_male_age_over_18_basic_schooling,
    population_economically_active AS manzana_population_economically_active,
    population_male_economically_active AS manzana_population_male_economically_active,
    population_not_economically_active AS manzana_population_not_economically_active,
    population_male_not_economically_active AS manzana_population_male_not_economically_active,
    population_employed AS manzana_population_employed,
    population_male_employed AS manzana_population_male_employed,
    population_unemployed AS manzana_population_unemployed,
    population_male_unemployed AS manzana_population_male_unemployed,
    population_no_health_services AS manzana_population_no_health_services,
    population_entitled_to_health_services AS manzana_population_entitled_to_health_services,
    population_covered_by_imss AS manzana_population_covered_by_imss,
    population_covered_by_issste AS manzana_population_covered_by_issste,
    population_covered_by_state_issste AS manzana_population_covered_by_state_issste,
    population_covered_by_seguro_popular AS manzana_population_covered_by_seguro_popular,
    population_over_12_unmarried AS manzana_population_over_12_unmarried,
    population_over_12_married AS manzana_population_over_12_married,
    population_over_12_divorced AS manzana_population_over_12_divorced,
    population_catholic AS manzana_population_catholic,
    population_other_christian AS manzana_population_other_christian,
    population_other_religions AS manzana_population_other_religions,
    population_non_religious AS manzana_population_non_religious,
    n_census_households AS manzana_n_census_households,
    n_male_head_of_household AS manzana_n_male_head_of_household,
    n_female_head_of_household AS manzana_n_female_head_of_household,
    n_census_persons AS manzana_n_census_persons,
    n_people_private_homes AS manzana_n_people_private_homes,
    average_number_home_occupants AS manzana_average_number_home_occupants,
    average_number_occupants_per_room AS manzana_average_number_occupants_per_room,
    n_different_floor_material AS manzana_n_different_floor_material,
    n_private_homes_dirt_floors AS manzana_n_private_homes_dirt_floors,
    n_homes_with_one_bedroom AS manzana_n_homes_with_one_bedroom,
    n_homes_with_at_least_two_bedrooms AS manzana_n_homes_with_at_least_two_bedrooms,
    n_homes_with_one_room AS manzana_n_homes_with_one_room,
    n_homes_with_two_rooms AS manzana_n_homes_with_two_rooms,
    n_homes_with_three_or_more_rooms AS manzana_n_homes_with_three_or_more_rooms,
    n_homes_with_electricity AS manzana_n_homes_with_electricity,
    n_homes_without_electricity AS manzana_n_homes_without_electricity,
    n_homes_with_plumbing AS manzana_n_homes_with_plumbing,
    n_homes_without_plumbing AS manzana_n_homes_without_plumbing,
    n_homes_with_toilet AS manzana_n_homes_with_toilet,
    n_homes_with_sewage_access AS manzana_n_homes_with_sewage_access,
    n_homes_with_full_infrastructure AS manzana_n_homes_with_full_infrastructure,
    n_homes_without_any_goods AS manzana_n_homes_without_any_goods,
    n_homes_with_radio AS manzana_n_homes_with_radio,
    n_homes_with_tv AS manzana_n_homes_with_tv,
    n_homes_with_refigerador AS manzana_n_homes_with_refigerador,
    n_homes_with_washing_machine AS manzana_n_homes_with_washing_machine,
    n_homes_with_car AS manzana_n_homes_with_car,
    n_homes_with_computer AS manzana_n_homes_with_computer,
    n_homes_with_telephone AS manzana_n_homes_with_telephone,
    n_homes_with_cell_hone AS manzana_n_homes_with_cell_hone,
    n_homes_with_internet AS manzana_n_homes_with_internet,
    n_households_in_poverty AS manzana_n_households_in_poverty,
    n_people_in_poverty AS manzana_n_people_in_poverty,
    n_housholds_without_basic_housing_services AS manzana_n_housholds_without_basic_housing_services,
    n_people_without_basic_housing_services AS manzana_n_people_without_basic_housing_services,
    n_households_without_water AS manzana_n_households_without_water,
    n_people_without_water AS manzana_n_people_without_water,
    n_households_without_sewage AS manzana_n_households_without_sewage,
    n_people_without_sewage AS manzana_n_people_without_sewage,
    n_households_without_electricity AS manzana_n_households_without_electricity,
    n_people_without_electricity AS manzana_n_people_without_electricity,
    n_households_without_quality_living_space AS manzana_n_households_without_quality_living_space,
    n_people_without_quality_living_space AS manzana_n_people_without_quality_living_space,
    n_households_dirt_floor AS manzana_n_households_dirt_floor,
    n_people_dirt_floor AS manzana_n_people_dirt_floor,
    n_households_overcrowding AS manzana_n_households_overcrowding,
    n_people_overcrowding AS manzana_n_people_overcrowding,
    n_households_no_health AS manzana_n_households_no_health,
    n_people_no_health AS manzana_n_people_no_health,
    n_households_lack_education AS manzana_n_households_lack_education,
    n_people_lack_education AS manzana_n_people_lack_education,
    latitude AS manzana_latitude,
    longitude AS manzana_longitude
    FROM clean.manzanas
    WHERE manzana_id LIKE '31%')

    SELECT * FROM
    sifode_subset_manzana_id_joined
    LEFT JOIN localidades
    USING (locality_id)
    LEFT JOIN manzanas
    USING (manzana_id)
    ); 