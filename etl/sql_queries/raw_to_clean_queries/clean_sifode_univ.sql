create table clean.sifode_univ as
select llave_hogar_h as home_id,
id_mdm_h as family_id,
id_mdm_p as person_id,
s_cve_entidad_federativa as state_id,
s_cve_municipio as municipality_id,
s_cve_localidad as locality_id,
cast(case when no_asi_esc = '1' then true else false end as boolean) as does_not_attend_school,
cast(case when no_leer_escr = '1' then true else false end as boolean) as can_not_read_or_write,
case when niv_ed = ' ' then 'NULL' else niv_ed end as educational_attainment,
case when sit_viv = ' ' then 'NULL' else sit_viv end as dwelling_situation,
cast(case when cruzada = '1' then true else false end as boolean) as municipality_crusade_against_hunger,
case when td_fija = ' ' then 'NULL' else td_fija end as total_fixed_dioconsa_grocery_stores_locality,
case when td_movil = ' ' then 'NULL' else td_movil end as total_mobile_dioconsa_grocery_stores_locality,
cast(case when u_fonart1 = '1 ' then true else false end as boolean) as preapproved_fonart_productive_projects_fonart1,
cast(case when u_fonart1_a = '1 ' then true else false end as boolean) as preapproved_fonart_popular_art_competition_fonart1_a,
cast(case when u_fonart2 = '1 ' then true else false end as boolean) as preapproved_fonart_occupational_health_fonart2,
cast(case when u_fonart3 = '1 ' then true else false end as boolean) as preapproved_fonart_support_training_fonart3,
cast(case when u_fonart = '1 ' then true else false end as boolean) as overall_preapproved_national_fund_for_craft_work_fonart,
cast(case when rn_pdzp = '1' then true else false end as boolean) as complies_with_rules_territorial_context_pdzp_rn_pdzp,
cast(case when u_pdzp1 = '1' then true else false end as boolean) as preapproved_pdzp_firm_floor_pdzp1,
cast(case when u_pdzp2 = '1' then true else false end as boolean) as preapproved_pdzp_firm_roof_pdzp2,
cast(case when u_pdzp3 = '1' then true else false end as boolean) as preapproved_pdzp_firm_wall_pdzp3,
cast(case when u_pdzp4 = '1' then true else false end as boolean) as preapproved_pdzp_programs_electric_energy_pdzp4,
cast(case when u_pdzp5 = '1' then true else false end as boolean) as preapproved_pdzp_solar_panels_pdzp5,
cast(case when u_pdzp6 = '1' then true else false end as boolean) as preapproved_pdzp_ecological_stoves_pdzp6,
cast(case when u_pdzp7 = '1' then true else false end as boolean) as preapproved_pdzp_ecological_latrines_baths_pdzp7,
cast(case when u_pdzp8 = '1' then true else false end as boolean) as preapproved_pdzp_additional_room_pdzp8,
cast(case when u_pdzp9 = '1' then true else false end as boolean) as preapproved_pdzp_potable_water_network_pdzp9,
cast(case when u_pdzp10 = '1' then true else false end as boolean) as preapproved_pdzp_drainage_pdzp10,
cast(case when u_pdzp11 = '1' then true else false end as boolean) as preapproved_pdzp_water_capturers_pdzp11,
cast(case when u_pdzp = '1' then true else false end as boolean) as overall_preapproved_program_priority_zones_pdzp,
cast(case when rn_pei = '1' then true else false end as boolean) as complies_with_rules_program_preapproved_children_rn_pei,
cast(case when u_pei = '1' then true else false end as boolean) as preapproved_infant_residence_programs_u_pei,
cast(case when rn_pop = '1' then true else false end as boolean) as preapproved_pop_territorial_context_rn_pop,
cast(case when u_pop = '1' then true else false end as boolean) as preapproved_program_productive_options_u_pop,
cast(case when u_pet = '1' then true else false end as boolean) as preapproved_program_temporal_employment_sedesol_u_pet, 
cast(case when u_ppam = '1' then true else false end as boolean) as preapproved_pension_program_for_elders_u_ppam,
cast(case when u_paja = '1' then true else false end as boolean) as preapproved_program_agricultural_day_workers_u_paja,
cast(case when u_psvjf = '1' then true else false end as boolean) as preapproved_life_insurance_female_households_psvjf,
cast(case when u_sep1 = '1' then true else false end as boolean) as preapproved_u_sep1,
cast(case when u_sep2 = '1' then true else false end as boolean) as preapproved_u_sep2,
cast(case when u_sep3 = '1' then true else false end as boolean) as preapproved_u_sep3,
cast(case when u_sep = '1' then true else false end as boolean) as overall_preapproved_for_sep_total_u_sep,
cast(case when u_inea1a = '1' then true else false end as boolean) as preapproved_inea1a,
cast(case when u_inea2a = '1' then true else false end as boolean) as preapproved_inea2a,
cast(case when u_inea3a = '1' then true else false end as boolean) as preapproved_inea3a,
cast(case when u_inea1b = '1' then true else false end as boolean) as preapproved_inea1b,
cast(case when u_inea2b = '1' then true else false end as boolean) as preapproved_inea2b,
cast(case when u_inea = '1' then true else false end as boolean) as overall_preapproved_for_education_of_adults_total_u_inea,
cast(case when rn_sagarpa1 = '1' then true else false end as boolean) as complies_rules_rn_sagarpa1,
cast(case when rn_sagarpa2 = '1' then true else false end as boolean) as complies_rules_rn_sagarpa2,
cast(case when rn_sagarpa3 = '1' then true else false end as boolean) as complies_rules_rn_sagarpa3,
cast(case when rn_sagarpa4 = '1' then true else false end as boolean) as complies_rules_valid_asentamiento_rn_sagarpa4,
cast(case when mun_agricfam = '1' then true else false end as boolean) as municipality_sagarpa_marzo_2015_mun_agricfam,
cast(case when u_sagarpa1 = '1' then true else false end as boolean) as preapproved_sagarpa1,
cast(case when u_sagarpa2 = '1' then true else false end as boolean) as preapproved_sagarpa2,
cast(case when u_sagarpa = '1' then true else false end as boolean) as preapproved_sagarpa3,
cast(case when u_salud = '1' then true else false end as boolean) as preapproved_seguro_popular_u_salud,
cast(case when u_stps1 = '1' then true else false end as boolean) as preapproved_agricultural_mobile_labor_stps1,
cast(case when u_stps2 = '1' then true else false end as boolean) as preapproved_self_employment_stps2,
cast(case when u_stps3 = '1' then true else false end as boolean) as preapproved_labor_and_provisional_work_stps3,
cast(case when u_stps = '1' then true else false end as boolean) as overall_preapproved_labor_and_provisional_work_stps,
cast(case when rn_corett = '1' then true else false end as boolean) as complies_localities_agriculture_centers_rn_corett,
cast(case when u_corett = '1' then true else false end as boolean) as preapproved_national_commision_land_occupancy_u_corett,
cast(case when u_liconsa = '1' then true else false end as boolean) as preapproved_liconsa_social_supply_of_milk_table2_u_liconsa,
cast(case when u_conavi1 = '1' then true else false end as boolean) as preapproved_housing_commision_u_conavi1,
cast(case when u_conavi2 = '1' then true else false end as boolean) as preapproved_housing_commision_u_conavi2,
cast(case when u_conavi3 = '1' then true else false end as boolean) as preapproved_housing_commision_u_conavi3,
cast(case when u_conavi = '1' then true else false end as boolean) as overall_preapproved_housing_commision_u_conavi,
cast(case when u_cdi1 = '1' then true else false end as boolean) as preapproved_cdi_paei_primary_education_u_cdi1,
cast(case when u_cdi2 = '1' then true else false end as boolean) as preapproved_cdi_paei_secondary_education_u_cdi2,
cast(case when u_cdi3 = '1' then true else false end as boolean) as preapproved_cdi_proin_productive_projects_u_cdi3,
cast(case when u_cdi4 = '1' then true else false end as boolean) as complies_with_rules_ofcdi_u_cdi4,
cast(case when u_cdi5 = '1' then true else false end as boolean) as preapproved_for_cdi_u_cdi5,
cast(case when u_cdi6 = '1' then true else false end as boolean) as preapproved_for_cdi_u_cdi6,
cast(case when u_cdi = '1' then true else false end as boolean) as overall_preapproved_for_cdi_u_cdi,
cast(case when rn_fonhapo = '1' then true else false end as boolean) as complies_with_rules_of_fonhapo_sedatu_rn_fonhapo,
cast(case when u_fonhapo1 = '1' then true else false end as boolean) as preapproved_pvd_pvr_firm_floor_fonhapo1,
cast(case when u_fonhapo2 = '1' then true else false end as boolean) as preapproved_pvd_pvr_firm_roof_fonhapo2, 
cast(case when u_fonhapo3 = '1' then true else false end as boolean) as preapproved_pvd_pvr_firm_wall_fonhapo3,
cast(case when u_fonhapo4 = '1' then true else false end as boolean) as preapproved_pvd_pvr_additional_room_fonhapo4,
cast(case when u_fonhapo5 = '1' then true else false end as boolean) as preapproved_pvd_pvr_rural_housing_fonhapo5,
cast(case when u_fonhapo6 = '1' then true else false end as boolean) as preapproved_pvd_pvr_ecological_latrines_baths_fonhapo6,
cast(case when u_fonhapo = '1' then true else false end as boolean) as overall_preapproved_national_community_housing_sedatu_fonhapo, 
cast(case when u_prospera = '1' then true else false end as boolean) as preapproved_prospera_u_prospera,
cast(case when u_sct = '1' then true else false end as boolean) as preapproved_sct_program_temporal_employment_u_sct,
cast(case when u_semarnat1 = '1' then true else false end as boolean) as preapproved_for_semarnat1,
cast(case when u_semarnat2 = '1' then true else false end as boolean) as preapproved_for_provicom_productive_projects_semarnat2,
cast(case when u_semarnat3 = '1' then true else false end as boolean) as preapproved_temporal_employment_semarnat3,
cast(case when u_semarnat = '1' then true else false end as boolean) as preapproved_for_environment_and_natural_resources_semarnat4,
cast(case when u_se1 = '1' then true else false end as boolean) as preapproved_inaes_productive_projects_se1,
cast(case when u_imjuve = '1' then true else false end as boolean) as preapproved_social_projects_of_youth_groups_imjuve
from raw.sifode_univ;
