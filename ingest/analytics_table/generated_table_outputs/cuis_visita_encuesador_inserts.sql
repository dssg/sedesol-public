 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'c_doc_edad' as column_name,c_doc_edad as value, count(c_doc_edad) as value_count,(0.0+count(c_doc_edad))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY c_doc_edad;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'c_res_entr' as column_name,c_res_entr as value, count(c_res_entr) as value_count,(0.0+count(c_res_entr))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY c_res_entr;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'c_tipo_phone' as column_name,c_tipo_phone as value, count(c_tipo_phone) as value_count,(0.0+count(c_tipo_phone))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY c_tipo_phone;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'doc_identidad' as column_name,doc_identidad as value, count(doc_identidad) as value_count,(0.0+count(doc_identidad))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY doc_identidad;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'info_adec' as column_name,info_adec as value, count(info_adec) as value_count,(0.0+count(info_adec))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY info_adec;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'sn_folio_edad' as column_name,sn_folio_edad as value, count(sn_folio_edad) as value_count,(0.0+count(sn_folio_edad))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY sn_folio_edad;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'sn_folio_ident' as column_name,sn_folio_ident as value, count(sn_folio_ident) as value_count,(0.0+count(sn_folio_ident))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY sn_folio_ident;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'tpo_opera' as column_name,tpo_opera as value, count(tpo_opera) as value_count,(0.0+count(tpo_opera))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY tpo_opera;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'traduct' as column_name,traduct as value, count(traduct) as value_count,(0.0+count(traduct))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY traduct;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'usr_creacion' as column_name,usr_creacion as value, count(usr_creacion) as value_count,(0.0+count(usr_creacion))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY usr_creacion;
 INSERT INTO raw.table_analytics SELECT 'cuis_visita_encuestador' as table_name, 'visita' as column_name,visita as value, count(visita) as value_count,(0.0+count(visita))/(Select count(*) from raw.cuis_visita_encuestador) as value_prop from raw.cuis_visita_encuestador GROUP BY visita;
