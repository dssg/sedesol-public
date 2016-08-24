 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'c_cd_edo_civil' as column_name,c_cd_edo_civil as value, count(c_cd_edo_civil) as value_count,(0.0+count(c_cd_edo_civil))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY c_cd_edo_civil;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'c_cd_parentesco' as column_name,c_cd_parentesco as value, count(c_cd_parentesco) as value_count,(0.0+count(c_cd_parentesco))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY c_cd_parentesco;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'c_con_res' as column_name,c_con_res as value, count(c_con_res) as value_count,(0.0+count(c_con_res))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY c_con_res;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'c_integrante' as column_name,c_integrante as value, count(c_integrante) as value_count,(0.0+count(c_integrante))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY c_integrante;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'edad' as column_name,edad as value, count(edad) as value_count,(0.0+count(edad))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY edad;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'madre' as column_name,madre as value, count(madre) as value_count,(0.0+count(madre))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY madre;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'num_per' as column_name,num_per as value, count(num_per) as value_count,(0.0+count(num_per))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY num_per;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'padre' as column_name,padre as value, count(padre) as value_count,(0.0+count(padre))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY padre;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'reside' as column_name,reside as value, count(reside) as value_count,(0.0+count(reside))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY reside;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 's_val_nb_renapo' as column_name,s_val_nb_renapo as value, count(s_val_nb_renapo) as value_count,(0.0+count(s_val_nb_renapo))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY s_val_nb_renapo;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'usr_creacion' as column_name,usr_creacion as value, count(usr_creacion) as value_count,(0.0+count(usr_creacion))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY usr_creacion;
 INSERT INTO raw.table_analytics SELECT 'cuis_integrante' as table_name, 'val_nb_renapo' as column_name,val_nb_renapo as value, count(val_nb_renapo) as value_count,(0.0+count(val_nb_renapo))/(Select count(*) from raw.cuis_integrante) as value_prop from raw.cuis_integrante GROUP BY val_nb_renapo;
