 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'a_estatus' as column_name,a_estatus as value, count(a_estatus) as value_count,(0.0+count(a_estatus))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY a_estatus;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'a_fch_corte' as column_name,a_fch_corte as value, count(a_fch_corte) as value_count,(0.0+count(a_fch_corte))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY a_fch_corte;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'a_mov' as column_name,a_mov as value, count(a_mov) as value_count,(0.0+count(a_mov))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY a_mov;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'a_vigente' as column_name,a_vigente as value, count(a_vigente) as value_count,(0.0+count(a_vigente))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY a_vigente;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_entidad_federativa' as column_name,c_entidad_federativa as value, count(c_entidad_federativa) as value_count,(0.0+count(c_entidad_federativa))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_entidad_federativa;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_municipio' as column_name,c_municipio as value, count(c_municipio) as value_count,(0.0+count(c_municipio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_municipio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_termino_generico' as column_name,c_termino_generico as value, count(c_termino_generico) as value_count,(0.0+count(c_termino_generico))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_termino_generico;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_administracion' as column_name,c_tipo_administracion as value, count(c_tipo_administracion) as value_count,(0.0+count(c_tipo_administracion))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_administracion;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_asentamiento' as column_name,c_tipo_asentamiento as value, count(c_tipo_asentamiento) as value_count,(0.0+count(c_tipo_asentamiento))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_asentamiento;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_entre_vial_1' as column_name,c_tipo_entre_vial_1 as value, count(c_tipo_entre_vial_1) as value_count,(0.0+count(c_tipo_entre_vial_1))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_entre_vial_1;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_entre_vial_2' as column_name,c_tipo_entre_vial_2 as value, count(c_tipo_entre_vial_2) as value_count,(0.0+count(c_tipo_entre_vial_2))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_entre_vial_2;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_margen' as column_name,c_tipo_margen as value, count(c_tipo_margen) as value_count,(0.0+count(c_tipo_margen))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_margen;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_transito' as column_name,c_tipo_transito as value, count(c_tipo_transito) as value_count,(0.0+count(c_tipo_transito))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_transito;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_vial' as column_name,c_tipo_vial as value, count(c_tipo_vial) as value_count,(0.0+count(c_tipo_vial))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_vial;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'c_tipo_vial_pos' as column_name,c_tipo_vial_pos as value, count(c_tipo_vial_pos) as value_count,(0.0+count(c_tipo_vial_pos))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY c_tipo_vial_pos;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'cve_entidad_federativa' as column_name,cve_entidad_federativa as value, count(cve_entidad_federativa) as value_count,(0.0+count(cve_entidad_federativa))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY cve_entidad_federativa;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'cve_municipio' as column_name,cve_municipio as value, count(cve_municipio) as value_count,(0.0+count(cve_municipio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY cve_municipio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'dom_conocido' as column_name,dom_conocido as value, count(dom_conocido) as value_count,(0.0+count(dom_conocido))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY dom_conocido;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'nom_entidad_federativa' as column_name,nom_entidad_federativa as value, count(nom_entidad_federativa) as value_count,(0.0+count(nom_entidad_federativa))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY nom_entidad_federativa;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'nom_municipio' as column_name,nom_municipio as value, count(nom_municipio) as value_count,(0.0+count(nom_municipio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY nom_municipio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_c_tipo_asentamiento' as column_name,s_c_tipo_asentamiento as value, count(s_c_tipo_asentamiento) as value_count,(0.0+count(s_c_tipo_asentamiento))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_c_tipo_asentamiento;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_c_tipo_entre_vial_1' as column_name,s_c_tipo_entre_vial_1 as value, count(s_c_tipo_entre_vial_1) as value_count,(0.0+count(s_c_tipo_entre_vial_1))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_c_tipo_entre_vial_1;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_c_tipo_entre_vial_2' as column_name,s_c_tipo_entre_vial_2 as value, count(s_c_tipo_entre_vial_2) as value_count,(0.0+count(s_c_tipo_entre_vial_2))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_c_tipo_entre_vial_2;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_c_tipo_vial' as column_name,s_c_tipo_vial as value, count(s_c_tipo_vial) as value_count,(0.0+count(s_c_tipo_vial))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_c_tipo_vial;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_c_tipo_vial_pos' as column_name,s_c_tipo_vial_pos as value, count(s_c_tipo_vial_pos) as value_count,(0.0+count(s_c_tipo_vial_pos))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_c_tipo_vial_pos;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_cve_entidad_federativa' as column_name,s_cve_entidad_federativa as value, count(s_cve_entidad_federativa) as value_count,(0.0+count(s_cve_entidad_federativa))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_cve_entidad_federativa;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_cve_municipio' as column_name,s_cve_municipio as value, count(s_cve_municipio) as value_count,(0.0+count(s_cve_municipio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_cve_municipio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_nom_entidad_federativa' as column_name,s_nom_entidad_federativa as value, count(s_nom_entidad_federativa) as value_count,(0.0+count(s_nom_entidad_federativa))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_nom_entidad_federativa;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_nom_municipio' as column_name,s_nom_municipio as value, count(s_nom_municipio) as value_count,(0.0+count(s_nom_municipio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_nom_municipio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_origen_domicilio' as column_name,s_origen_domicilio as value, count(s_origen_domicilio) as value_count,(0.0+count(s_origen_domicilio))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_origen_domicilio;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 's_tipoloc' as column_name,s_tipoloc as value, count(s_tipoloc) as value_count,(0.0+count(s_tipoloc))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY s_tipoloc;
 INSERT INTO raw.table_analytics SELECT 'cuis_domicilio' as table_name, 'usr_creacion' as column_name,usr_creacion as value, count(usr_creacion) as value_count,(0.0+count(usr_creacion))/(Select count(*) from raw.cuis_domicilio) as value_prop from raw.cuis_domicilio GROUP BY usr_creacion;
