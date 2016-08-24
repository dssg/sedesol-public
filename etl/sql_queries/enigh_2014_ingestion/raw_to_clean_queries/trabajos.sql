CREATE TABLE clean.enigh_trabajos AS
SELECT folioviv,
       foliohog,
       numren,
       id_trabajo,
       trapais,
       CASE WHEN subor = ' ' THEN NULL
       ELSE CAST(subor AS NUMERIC)
       END AS subor,
       CASE WHEN indep = ' ' THEN NULL
       ELSE CAST(indep AS NUMERIC)
       END AS indep,
       personal,
       CASE WHEN pago = ' ' THEN NULL
       ELSE CAST(pago AS NUMERIC)
       END AS pago,
       contrato,
       tipocontr,
       pres_1,
       pres_2,
       pres_3,
       pres_4,
       pres_5,
       pres_6,
       pres_7,
       pres_8,
       pres_9,
       pres_10,
       pres_11,
       pres_12,
       pres_13,
       pres_14,
       pres_15,
       pres_16,
       pres_17,
       pres_18,
       pres_19,
       pres_20,
       CASE WHEN htrab = ' ' THEN NULL
       ELSE CAST(htrab AS NUMERIC)
       END AS htrab,
       sinco,
       scian,
       clas_emp,
       tam_emp,
       no_ing,
       tiene_suel,
       tipoact,
       socios,
       soc_nr1,
       soc_nr2,
       soc_resp,
       otra_act,
       tipoact2,
       tipoact3,
       tipoact4,
       lugar,
       conf_pers,
       reg_not,
       reg_cont,
       com_fis
FROM raw.inegi_trabajos_2014;
