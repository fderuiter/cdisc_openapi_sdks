cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator C)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=implicit-function-declaration")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=missing-declarations")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()
endif()

set(pkgName "cdisc_library_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/_mdr_search_scopes_get_200_response.c
    model/about.c
    model/about_links.c
    model/about_ref.c
    model/adam_datastructure.c
    model/adam_datastructure_links.c
    model/adam_datastructure_ref.c
    model/adam_datastructure_ref_element.c
    model/adam_datastructure_variables.c
    model/adam_datastructure_variables_links.c
    model/adam_datastructure_variables_ref.c
    model/adam_datastructure_varsets.c
    model/adam_datastructure_varsets_links.c
    model/adam_datastructure_varsets_ref.c
    model/adam_product.c
    model/adam_product_datastructures.c
    model/adam_product_datastructures_links.c
    model/adam_product_datastructures_ref.c
    model/adam_product_links.c
    model/adam_product_ref.c
    model/adam_product_ref_element.c
    model/adam_variable.c
    model/adam_variable_links.c
    model/adam_variable_ref.c
    model/adam_variable_ref_element.c
    model/adam_varset.c
    model/adam_varset_links.c
    model/adam_varset_ref.c
    model/adam_varset_ref_element.c
    model/cdash_class.c
    model/cdash_class_domains.c
    model/cdash_class_domains_links.c
    model/cdash_class_domains_ref.c
    model/cdash_class_field.c
    model/cdash_class_field_links.c
    model/cdash_class_field_ref.c
    model/cdash_class_field_ref_version.c
    model/cdash_class_links.c
    model/cdash_class_ref.c
    model/cdash_class_ref_element.c
    model/cdash_domain.c
    model/cdash_domain_field.c
    model/cdash_domain_field_links.c
    model/cdash_domain_field_ref.c
    model/cdash_domain_field_ref_element.c
    model/cdash_domain_field_ref_version.c
    model/cdash_domain_fields.c
    model/cdash_domain_fields_links.c
    model/cdash_domain_fields_ref.c
    model/cdash_domain_links.c
    model/cdash_domain_ref.c
    model/cdash_domain_ref_element.c
    model/cdash_product.c
    model/cdash_product_classes.c
    model/cdash_product_classes_links.c
    model/cdash_product_classes_ref.c
    model/cdash_product_domains.c
    model/cdash_product_domains_links.c
    model/cdash_product_domains_ref.c
    model/cdash_product_links.c
    model/cdash_product_ref.c
    model/cdash_product_ref_element.c
    model/cdashig_class.c
    model/cdashig_class_domains.c
    model/cdashig_class_domains_links.c
    model/cdashig_class_domains_ref.c
    model/cdashig_class_links.c
    model/cdashig_class_ref.c
    model/cdashig_class_ref_element.c
    model/cdashig_class_ref_subclass.c
    model/cdashig_class_scenarios.c
    model/cdashig_class_scenarios_links.c
    model/cdashig_class_scenarios_ref.c
    model/cdashig_domain.c
    model/cdashig_domain_field.c
    model/cdashig_domain_field_links.c
    model/cdashig_domain_field_ref.c
    model/cdashig_domain_field_ref_element.c
    model/cdashig_domain_field_ref_version.c
    model/cdashig_domain_fields.c
    model/cdashig_domain_fields_links.c
    model/cdashig_domain_fields_ref.c
    model/cdashig_domain_links.c
    model/cdashig_domain_ref.c
    model/cdashig_domain_ref_element.c
    model/cdashig_product.c
    model/cdashig_product_classes.c
    model/cdashig_product_classes_links.c
    model/cdashig_product_classes_ref.c
    model/cdashig_product_domains.c
    model/cdashig_product_domains_links.c
    model/cdashig_product_domains_ref.c
    model/cdashig_product_links.c
    model/cdashig_product_ref.c
    model/cdashig_product_ref_element.c
    model/cdashig_product_scenarios.c
    model/cdashig_product_scenarios_links.c
    model/cdashig_product_scenarios_ref.c
    model/cdashig_scenario.c
    model/cdashig_scenario_field.c
    model/cdashig_scenario_field_links.c
    model/cdashig_scenario_field_ref.c
    model/cdashig_scenario_field_ref_element.c
    model/cdashig_scenario_field_ref_version.c
    model/cdashig_scenario_fields.c
    model/cdashig_scenario_fields_links.c
    model/cdashig_scenario_fields_ref.c
    model/cdashig_scenario_links.c
    model/cdashig_scenario_ref.c
    model/cdashig_scenario_ref_element.c
    model/ct_codelist.c
    model/ct_codelist_links.c
    model/ct_codelist_ref.c
    model/ct_codelist_ref_element.c
    model/ct_codelist_ref_version.c
    model/ct_codelist_terms.c
    model/ct_codelist_terms_links.c
    model/ct_codelist_terms_ref.c
    model/ct_package.c
    model/ct_package_codelists.c
    model/ct_package_codelists_links.c
    model/ct_package_codelists_ref.c
    model/ct_package_links.c
    model/ct_package_ref.c
    model/ct_package_ref_element.c
    model/ct_package_term.c
    model/ct_packages.c
    model/ct_packages_links.c
    model/ct_packages_ref.c
    model/ct_term.c
    model/ct_term_links.c
    model/ct_term_ref.c
    model/ct_term_ref_element.c
    model/ct_term_ref_version.c
    model/default_error_response.c
    model/default_search_response.c
    model/default_search_response_hits_inner.c
    model/default_search_scopes.c
    model/export_adam_datastructures_row.c
    model/export_adam_datastructures_table.c
    model/export_adam_variables_row.c
    model/export_adam_variables_table.c
    model/export_adam_workbook.c
    model/export_cdash_class_variables_row.c
    model/export_cdash_domain_variables_row.c
    model/export_cdash_table.c
    model/export_cdashig_domain_variables_row.c
    model/export_cdashig_scenario_variables_row.c
    model/export_cdashig_table.c
    model/export_ct_codelist.c
    model/export_ct_table.c
    model/export_ct_term.c
    model/export_qrs_csv_items_row.c
    model/export_qrs_general.c
    model/export_qrs_items_table.c
    model/export_qrs_responses.c
    model/export_qrs_workbook.c
    model/export_qrs_workbook_items_row.c
    model/export_sdtm_class_variables_row.c
    model/export_sdtm_dataset_variables_row.c
    model/export_sdtm_datasets_row.c
    model/export_sdtm_datasets_table.c
    model/export_sdtm_variables_table.c
    model/export_sdtm_workbook.c
    model/export_sdtmig_datasets_row.c
    model/export_sdtmig_datasets_table.c
    model/export_sdtmig_variables_row.c
    model/export_sdtmig_variables_table.c
    model/export_sdtmig_workbook.c
    model/export_sendig_datasets_row.c
    model/export_sendig_datasets_table.c
    model/export_sendig_variables_row.c
    model/export_sendig_variables_table.c
    model/export_sendig_workbook.c
    model/health.c
    model/lastupdated.c
    model/lastupdated_links.c
    model/lastupdated_ref.c
    model/maintenance_body.c
    model/productgroup_data_analysis.c
    model/productgroup_data_analysis_links.c
    model/productgroup_data_collection.c
    model/productgroup_data_collection_links.c
    model/productgroup_data_tabulation.c
    model/productgroup_data_tabulation_links.c
    model/productgroup_qrs.c
    model/productgroup_qrs_links.c
    model/productgroup_ref.c
    model/productgroup_terminology.c
    model/productgroup_terminology_links.c
    model/products.c
    model/products_links.c
    model/products_ref.c
    model/qrs_item.c
    model/qrs_item_links.c
    model/qrs_item_ref_element.c
    model/qrs_items.c
    model/qrs_items_links.c
    model/qrs_items_ref.c
    model/qrs_product.c
    model/qrs_product_links.c
    model/qrs_product_ref.c
    model/qrs_ref_element.c
    model/qrs_response_links.c
    model/qrs_responsegroup.c
    model/qrs_responsegroup_links.c
    model/qrs_responsegroup_ref.c
    model/qrs_responsegroup_ref_element.c
    model/qrs_responsegroups.c
    model/qrs_responsegroups_links.c
    model/qrs_responsegroups_ref.c
    model/qrs_responses.c
    model/root_cdash_class_field.c
    model/root_cdash_class_field_links.c
    model/root_cdash_class_field_ref.c
    model/root_cdash_domain_field.c
    model/root_cdash_domain_field_links.c
    model/root_cdash_domain_field_ref.c
    model/root_cdashig_domain_field.c
    model/root_cdashig_domain_field_links.c
    model/root_cdashig_domain_field_ref.c
    model/root_cdashig_scenario_field.c
    model/root_cdashig_scenario_field_links.c
    model/root_cdashig_scenario_field_ref.c
    model/root_ct_codelist.c
    model/root_ct_codelist_links.c
    model/root_ct_codelist_ref.c
    model/root_ct_codelist_ref_element.c
    model/root_ct_term.c
    model/root_ct_term_links.c
    model/root_ct_term_ref.c
    model/root_sdtm_class_variable.c
    model/root_sdtm_class_variable_links.c
    model/root_sdtm_class_variable_ref.c
    model/root_sdtm_dataset_variable.c
    model/root_sdtm_dataset_variable_links.c
    model/root_sdtm_dataset_variable_ref.c
    model/root_sdtmig_dataset_variable.c
    model/root_sdtmig_dataset_variable_links.c
    model/root_sdtmig_dataset_variable_ref.c
    model/root_sendig_dataset_variable.c
    model/root_sendig_dataset_variable_links.c
    model/root_sendig_dataset_variable_ref.c
    model/scope_values.c
    model/sdtm_class.c
    model/sdtm_class_datasets.c
    model/sdtm_class_datasets_links.c
    model/sdtm_class_datasets_ref.c
    model/sdtm_class_links.c
    model/sdtm_class_ref.c
    model/sdtm_class_ref_element.c
    model/sdtm_class_ref_subclass.c
    model/sdtm_class_variable.c
    model/sdtm_class_variable_links.c
    model/sdtm_class_variable_ref.c
    model/sdtm_class_variable_ref_element.c
    model/sdtm_class_variable_ref_qualifies.c
    model/sdtm_class_variable_ref_target.c
    model/sdtm_class_variable_ref_version.c
    model/sdtm_class_variables.c
    model/sdtm_class_variables_links.c
    model/sdtm_class_variables_ref.c
    model/sdtm_classes.c
    model/sdtm_classes_links.c
    model/sdtm_classes_ref.c
    model/sdtm_dataset.c
    model/sdtm_dataset_links.c
    model/sdtm_dataset_ref.c
    model/sdtm_dataset_ref_element.c
    model/sdtm_dataset_variable.c
    model/sdtm_dataset_variable_links.c
    model/sdtm_dataset_variable_ref.c
    model/sdtm_dataset_variable_ref_element.c
    model/sdtm_dataset_variable_ref_target.c
    model/sdtm_dataset_variable_ref_version.c
    model/sdtm_dataset_variables.c
    model/sdtm_dataset_variables_links.c
    model/sdtm_dataset_variables_ref.c
    model/sdtm_datasets.c
    model/sdtm_datasets_links.c
    model/sdtm_datasets_ref.c
    model/sdtm_product.c
    model/sdtm_product_links.c
    model/sdtm_product_ref.c
    model/sdtm_product_ref_element.c
    model/sdtmig_class.c
    model/sdtmig_class_datasets.c
    model/sdtmig_class_datasets_links.c
    model/sdtmig_class_datasets_ref.c
    model/sdtmig_class_links.c
    model/sdtmig_class_ref.c
    model/sdtmig_class_ref_element.c
    model/sdtmig_class_ref_subclass.c
    model/sdtmig_classes.c
    model/sdtmig_classes_links.c
    model/sdtmig_classes_ref.c
    model/sdtmig_dataset.c
    model/sdtmig_dataset_links.c
    model/sdtmig_dataset_ref.c
    model/sdtmig_dataset_ref_element.c
    model/sdtmig_dataset_variable.c
    model/sdtmig_dataset_variable_links.c
    model/sdtmig_dataset_variable_ref.c
    model/sdtmig_dataset_variable_ref_element.c
    model/sdtmig_dataset_variable_ref_target.c
    model/sdtmig_dataset_variable_ref_version.c
    model/sdtmig_dataset_variables.c
    model/sdtmig_dataset_variables_links.c
    model/sdtmig_dataset_variables_ref.c
    model/sdtmig_datasets.c
    model/sdtmig_datasets_links.c
    model/sdtmig_datasets_ref.c
    model/sdtmig_product.c
    model/sdtmig_product_links.c
    model/sdtmig_product_ref.c
    model/sdtmig_product_ref_element.c
    model/sendig_class.c
    model/sendig_class_datasets.c
    model/sendig_class_datasets_links.c
    model/sendig_class_datasets_ref.c
    model/sendig_class_links.c
    model/sendig_class_ref.c
    model/sendig_class_ref_element.c
    model/sendig_class_ref_subclass.c
    model/sendig_classes.c
    model/sendig_classes_links.c
    model/sendig_classes_ref.c
    model/sendig_dataset.c
    model/sendig_dataset_links.c
    model/sendig_dataset_ref.c
    model/sendig_dataset_ref_element.c
    model/sendig_dataset_variable.c
    model/sendig_dataset_variable_links.c
    model/sendig_dataset_variable_ref.c
    model/sendig_dataset_variable_ref_element.c
    model/sendig_dataset_variable_ref_version.c
    model/sendig_dataset_variables.c
    model/sendig_dataset_variables_links.c
    model/sendig_dataset_variables_ref.c
    model/sendig_datasets.c
    model/sendig_datasets_links.c
    model/sendig_datasets_ref.c
    model/sendig_product.c
    model/sendig_product_links.c
    model/sendig_product_ref.c
    model/sendig_product_ref_element.c
    model/xml_about.c
    model/xml_adam_datastructure.c
    model/xml_adam_datastructure_variables.c
    model/xml_adam_datastructure_varsets.c
    model/xml_adam_product.c
    model/xml_adam_product_datastructures.c
    model/xml_adam_variable.c
    model/xml_adam_varset.c
    model/xml_cdash_class.c
    model/xml_cdash_class_domains.c
    model/xml_cdash_class_field.c
    model/xml_cdash_domain.c
    model/xml_cdash_domain_field.c
    model/xml_cdash_domain_fields.c
    model/xml_cdash_product.c
    model/xml_cdash_product_classes.c
    model/xml_cdash_product_domains.c
    model/xml_cdashig_class.c
    model/xml_cdashig_class_domains.c
    model/xml_cdashig_class_scenarios.c
    model/xml_cdashig_domain.c
    model/xml_cdashig_domain_field.c
    model/xml_cdashig_domain_fields.c
    model/xml_cdashig_product.c
    model/xml_cdashig_product_classes.c
    model/xml_cdashig_product_domains.c
    model/xml_cdashig_product_scenarios.c
    model/xml_cdashig_scenario.c
    model/xml_cdashig_scenario_field.c
    model/xml_cdashig_scenario_fields.c
    model/xml_ct_codelist.c
    model/xml_ct_codelist_terms.c
    model/xml_ct_package.c
    model/xml_ct_package_codelists.c
    model/xml_ct_packages.c
    model/xml_ct_term.c
    model/xml_lastupdated.c
    model/xml_productgroup_data_analysis.c
    model/xml_productgroup_data_collection.c
    model/xml_productgroup_data_tabulation.c
    model/xml_productgroup_terminology.c
    model/xml_products.c
    model/xml_qrs_item.c
    model/xml_qrs_items.c
    model/xml_qrs_product.c
    model/xml_qrs_responsegroup.c
    model/xml_qrs_responsegroups.c
    model/xml_root_cdash_class_field.c
    model/xml_root_cdash_domain_field.c
    model/xml_root_cdashig_domain_field.c
    model/xml_root_cdashig_scenario_field.c
    model/xml_root_ct_codelist.c
    model/xml_root_ct_term.c
    model/xml_root_sdtm_class_variable.c
    model/xml_root_sdtm_dataset_variable.c
    model/xml_root_sdtmig_dataset_variable.c
    model/xml_root_sendig_dataset_variable.c
    model/xml_sdtm_class.c
    model/xml_sdtm_class_datasets.c
    model/xml_sdtm_class_variable.c
    model/xml_sdtm_class_variables.c
    model/xml_sdtm_classes.c
    model/xml_sdtm_dataset.c
    model/xml_sdtm_dataset_variable.c
    model/xml_sdtm_dataset_variables.c
    model/xml_sdtm_datasets.c
    model/xml_sdtm_product.c
    model/xml_sdtmig_class.c
    model/xml_sdtmig_class_datasets.c
    model/xml_sdtmig_classes.c
    model/xml_sdtmig_dataset.c
    model/xml_sdtmig_dataset_variable.c
    model/xml_sdtmig_dataset_variables.c
    model/xml_sdtmig_datasets.c
    model/xml_sdtmig_product.c
    model/xml_sendig_class.c
    model/xml_sendig_class_datasets.c
    model/xml_sendig_classes.c
    model/xml_sendig_dataset.c
    model/xml_sendig_dataset_variable.c
    model/xml_sendig_dataset_variables.c
    model/xml_sendig_datasets.c
    model/xml_sendig_product.c
    api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.c
    api/CDASHImplementationGuideCDASHIGAPI.c
    api/ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.c
    api/ControlledTerminologyCTAPI.c
    api/DefaultAPI.c
    api/MeasuresAPI.c
    api/SDTMImplementationGuideSDTMIGAPI.c
    api/SENDImplementationGuideSENDIGAPI.c
    api/SearchesAPI.c
    api/StatusesAPI.c
    api/StudyDataTabulationModelSDTMAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/any_type.h
    model/_mdr_search_scopes_get_200_response.h
    model/about.h
    model/about_links.h
    model/about_ref.h
    model/adam_datastructure.h
    model/adam_datastructure_links.h
    model/adam_datastructure_ref.h
    model/adam_datastructure_ref_element.h
    model/adam_datastructure_variables.h
    model/adam_datastructure_variables_links.h
    model/adam_datastructure_variables_ref.h
    model/adam_datastructure_varsets.h
    model/adam_datastructure_varsets_links.h
    model/adam_datastructure_varsets_ref.h
    model/adam_product.h
    model/adam_product_datastructures.h
    model/adam_product_datastructures_links.h
    model/adam_product_datastructures_ref.h
    model/adam_product_links.h
    model/adam_product_ref.h
    model/adam_product_ref_element.h
    model/adam_variable.h
    model/adam_variable_links.h
    model/adam_variable_ref.h
    model/adam_variable_ref_element.h
    model/adam_varset.h
    model/adam_varset_links.h
    model/adam_varset_ref.h
    model/adam_varset_ref_element.h
    model/cdash_class.h
    model/cdash_class_domains.h
    model/cdash_class_domains_links.h
    model/cdash_class_domains_ref.h
    model/cdash_class_field.h
    model/cdash_class_field_links.h
    model/cdash_class_field_ref.h
    model/cdash_class_field_ref_version.h
    model/cdash_class_links.h
    model/cdash_class_ref.h
    model/cdash_class_ref_element.h
    model/cdash_domain.h
    model/cdash_domain_field.h
    model/cdash_domain_field_links.h
    model/cdash_domain_field_ref.h
    model/cdash_domain_field_ref_element.h
    model/cdash_domain_field_ref_version.h
    model/cdash_domain_fields.h
    model/cdash_domain_fields_links.h
    model/cdash_domain_fields_ref.h
    model/cdash_domain_links.h
    model/cdash_domain_ref.h
    model/cdash_domain_ref_element.h
    model/cdash_product.h
    model/cdash_product_classes.h
    model/cdash_product_classes_links.h
    model/cdash_product_classes_ref.h
    model/cdash_product_domains.h
    model/cdash_product_domains_links.h
    model/cdash_product_domains_ref.h
    model/cdash_product_links.h
    model/cdash_product_ref.h
    model/cdash_product_ref_element.h
    model/cdashig_class.h
    model/cdashig_class_domains.h
    model/cdashig_class_domains_links.h
    model/cdashig_class_domains_ref.h
    model/cdashig_class_links.h
    model/cdashig_class_ref.h
    model/cdashig_class_ref_element.h
    model/cdashig_class_ref_subclass.h
    model/cdashig_class_scenarios.h
    model/cdashig_class_scenarios_links.h
    model/cdashig_class_scenarios_ref.h
    model/cdashig_domain.h
    model/cdashig_domain_field.h
    model/cdashig_domain_field_links.h
    model/cdashig_domain_field_ref.h
    model/cdashig_domain_field_ref_element.h
    model/cdashig_domain_field_ref_version.h
    model/cdashig_domain_fields.h
    model/cdashig_domain_fields_links.h
    model/cdashig_domain_fields_ref.h
    model/cdashig_domain_links.h
    model/cdashig_domain_ref.h
    model/cdashig_domain_ref_element.h
    model/cdashig_product.h
    model/cdashig_product_classes.h
    model/cdashig_product_classes_links.h
    model/cdashig_product_classes_ref.h
    model/cdashig_product_domains.h
    model/cdashig_product_domains_links.h
    model/cdashig_product_domains_ref.h
    model/cdashig_product_links.h
    model/cdashig_product_ref.h
    model/cdashig_product_ref_element.h
    model/cdashig_product_scenarios.h
    model/cdashig_product_scenarios_links.h
    model/cdashig_product_scenarios_ref.h
    model/cdashig_scenario.h
    model/cdashig_scenario_field.h
    model/cdashig_scenario_field_links.h
    model/cdashig_scenario_field_ref.h
    model/cdashig_scenario_field_ref_element.h
    model/cdashig_scenario_field_ref_version.h
    model/cdashig_scenario_fields.h
    model/cdashig_scenario_fields_links.h
    model/cdashig_scenario_fields_ref.h
    model/cdashig_scenario_links.h
    model/cdashig_scenario_ref.h
    model/cdashig_scenario_ref_element.h
    model/ct_codelist.h
    model/ct_codelist_links.h
    model/ct_codelist_ref.h
    model/ct_codelist_ref_element.h
    model/ct_codelist_ref_version.h
    model/ct_codelist_terms.h
    model/ct_codelist_terms_links.h
    model/ct_codelist_terms_ref.h
    model/ct_package.h
    model/ct_package_codelists.h
    model/ct_package_codelists_links.h
    model/ct_package_codelists_ref.h
    model/ct_package_links.h
    model/ct_package_ref.h
    model/ct_package_ref_element.h
    model/ct_package_term.h
    model/ct_packages.h
    model/ct_packages_links.h
    model/ct_packages_ref.h
    model/ct_term.h
    model/ct_term_links.h
    model/ct_term_ref.h
    model/ct_term_ref_element.h
    model/ct_term_ref_version.h
    model/default_error_response.h
    model/default_search_response.h
    model/default_search_response_hits_inner.h
    model/default_search_scopes.h
    model/export_adam_datastructures_row.h
    model/export_adam_datastructures_table.h
    model/export_adam_variables_row.h
    model/export_adam_variables_table.h
    model/export_adam_workbook.h
    model/export_cdash_class_variables_row.h
    model/export_cdash_domain_variables_row.h
    model/export_cdash_table.h
    model/export_cdashig_domain_variables_row.h
    model/export_cdashig_scenario_variables_row.h
    model/export_cdashig_table.h
    model/export_ct_codelist.h
    model/export_ct_table.h
    model/export_ct_term.h
    model/export_qrs_csv_items_row.h
    model/export_qrs_general.h
    model/export_qrs_items_table.h
    model/export_qrs_responses.h
    model/export_qrs_workbook.h
    model/export_qrs_workbook_items_row.h
    model/export_sdtm_class_variables_row.h
    model/export_sdtm_dataset_variables_row.h
    model/export_sdtm_datasets_row.h
    model/export_sdtm_datasets_table.h
    model/export_sdtm_variables_table.h
    model/export_sdtm_workbook.h
    model/export_sdtmig_datasets_row.h
    model/export_sdtmig_datasets_table.h
    model/export_sdtmig_variables_row.h
    model/export_sdtmig_variables_table.h
    model/export_sdtmig_workbook.h
    model/export_sendig_datasets_row.h
    model/export_sendig_datasets_table.h
    model/export_sendig_variables_row.h
    model/export_sendig_variables_table.h
    model/export_sendig_workbook.h
    model/health.h
    model/lastupdated.h
    model/lastupdated_links.h
    model/lastupdated_ref.h
    model/maintenance_body.h
    model/productgroup_data_analysis.h
    model/productgroup_data_analysis_links.h
    model/productgroup_data_collection.h
    model/productgroup_data_collection_links.h
    model/productgroup_data_tabulation.h
    model/productgroup_data_tabulation_links.h
    model/productgroup_qrs.h
    model/productgroup_qrs_links.h
    model/productgroup_ref.h
    model/productgroup_terminology.h
    model/productgroup_terminology_links.h
    model/products.h
    model/products_links.h
    model/products_ref.h
    model/qrs_item.h
    model/qrs_item_links.h
    model/qrs_item_ref_element.h
    model/qrs_items.h
    model/qrs_items_links.h
    model/qrs_items_ref.h
    model/qrs_product.h
    model/qrs_product_links.h
    model/qrs_product_ref.h
    model/qrs_ref_element.h
    model/qrs_response_links.h
    model/qrs_responsegroup.h
    model/qrs_responsegroup_links.h
    model/qrs_responsegroup_ref.h
    model/qrs_responsegroup_ref_element.h
    model/qrs_responsegroups.h
    model/qrs_responsegroups_links.h
    model/qrs_responsegroups_ref.h
    model/qrs_responses.h
    model/root_cdash_class_field.h
    model/root_cdash_class_field_links.h
    model/root_cdash_class_field_ref.h
    model/root_cdash_domain_field.h
    model/root_cdash_domain_field_links.h
    model/root_cdash_domain_field_ref.h
    model/root_cdashig_domain_field.h
    model/root_cdashig_domain_field_links.h
    model/root_cdashig_domain_field_ref.h
    model/root_cdashig_scenario_field.h
    model/root_cdashig_scenario_field_links.h
    model/root_cdashig_scenario_field_ref.h
    model/root_ct_codelist.h
    model/root_ct_codelist_links.h
    model/root_ct_codelist_ref.h
    model/root_ct_codelist_ref_element.h
    model/root_ct_term.h
    model/root_ct_term_links.h
    model/root_ct_term_ref.h
    model/root_sdtm_class_variable.h
    model/root_sdtm_class_variable_links.h
    model/root_sdtm_class_variable_ref.h
    model/root_sdtm_dataset_variable.h
    model/root_sdtm_dataset_variable_links.h
    model/root_sdtm_dataset_variable_ref.h
    model/root_sdtmig_dataset_variable.h
    model/root_sdtmig_dataset_variable_links.h
    model/root_sdtmig_dataset_variable_ref.h
    model/root_sendig_dataset_variable.h
    model/root_sendig_dataset_variable_links.h
    model/root_sendig_dataset_variable_ref.h
    model/scope_values.h
    model/sdtm_class.h
    model/sdtm_class_datasets.h
    model/sdtm_class_datasets_links.h
    model/sdtm_class_datasets_ref.h
    model/sdtm_class_links.h
    model/sdtm_class_ref.h
    model/sdtm_class_ref_element.h
    model/sdtm_class_ref_subclass.h
    model/sdtm_class_variable.h
    model/sdtm_class_variable_links.h
    model/sdtm_class_variable_ref.h
    model/sdtm_class_variable_ref_element.h
    model/sdtm_class_variable_ref_qualifies.h
    model/sdtm_class_variable_ref_target.h
    model/sdtm_class_variable_ref_version.h
    model/sdtm_class_variables.h
    model/sdtm_class_variables_links.h
    model/sdtm_class_variables_ref.h
    model/sdtm_classes.h
    model/sdtm_classes_links.h
    model/sdtm_classes_ref.h
    model/sdtm_dataset.h
    model/sdtm_dataset_links.h
    model/sdtm_dataset_ref.h
    model/sdtm_dataset_ref_element.h
    model/sdtm_dataset_variable.h
    model/sdtm_dataset_variable_links.h
    model/sdtm_dataset_variable_ref.h
    model/sdtm_dataset_variable_ref_element.h
    model/sdtm_dataset_variable_ref_target.h
    model/sdtm_dataset_variable_ref_version.h
    model/sdtm_dataset_variables.h
    model/sdtm_dataset_variables_links.h
    model/sdtm_dataset_variables_ref.h
    model/sdtm_datasets.h
    model/sdtm_datasets_links.h
    model/sdtm_datasets_ref.h
    model/sdtm_product.h
    model/sdtm_product_links.h
    model/sdtm_product_ref.h
    model/sdtm_product_ref_element.h
    model/sdtmig_class.h
    model/sdtmig_class_datasets.h
    model/sdtmig_class_datasets_links.h
    model/sdtmig_class_datasets_ref.h
    model/sdtmig_class_links.h
    model/sdtmig_class_ref.h
    model/sdtmig_class_ref_element.h
    model/sdtmig_class_ref_subclass.h
    model/sdtmig_classes.h
    model/sdtmig_classes_links.h
    model/sdtmig_classes_ref.h
    model/sdtmig_dataset.h
    model/sdtmig_dataset_links.h
    model/sdtmig_dataset_ref.h
    model/sdtmig_dataset_ref_element.h
    model/sdtmig_dataset_variable.h
    model/sdtmig_dataset_variable_links.h
    model/sdtmig_dataset_variable_ref.h
    model/sdtmig_dataset_variable_ref_element.h
    model/sdtmig_dataset_variable_ref_target.h
    model/sdtmig_dataset_variable_ref_version.h
    model/sdtmig_dataset_variables.h
    model/sdtmig_dataset_variables_links.h
    model/sdtmig_dataset_variables_ref.h
    model/sdtmig_datasets.h
    model/sdtmig_datasets_links.h
    model/sdtmig_datasets_ref.h
    model/sdtmig_product.h
    model/sdtmig_product_links.h
    model/sdtmig_product_ref.h
    model/sdtmig_product_ref_element.h
    model/sendig_class.h
    model/sendig_class_datasets.h
    model/sendig_class_datasets_links.h
    model/sendig_class_datasets_ref.h
    model/sendig_class_links.h
    model/sendig_class_ref.h
    model/sendig_class_ref_element.h
    model/sendig_class_ref_subclass.h
    model/sendig_classes.h
    model/sendig_classes_links.h
    model/sendig_classes_ref.h
    model/sendig_dataset.h
    model/sendig_dataset_links.h
    model/sendig_dataset_ref.h
    model/sendig_dataset_ref_element.h
    model/sendig_dataset_variable.h
    model/sendig_dataset_variable_links.h
    model/sendig_dataset_variable_ref.h
    model/sendig_dataset_variable_ref_element.h
    model/sendig_dataset_variable_ref_version.h
    model/sendig_dataset_variables.h
    model/sendig_dataset_variables_links.h
    model/sendig_dataset_variables_ref.h
    model/sendig_datasets.h
    model/sendig_datasets_links.h
    model/sendig_datasets_ref.h
    model/sendig_product.h
    model/sendig_product_links.h
    model/sendig_product_ref.h
    model/sendig_product_ref_element.h
    model/xml_about.h
    model/xml_adam_datastructure.h
    model/xml_adam_datastructure_variables.h
    model/xml_adam_datastructure_varsets.h
    model/xml_adam_product.h
    model/xml_adam_product_datastructures.h
    model/xml_adam_variable.h
    model/xml_adam_varset.h
    model/xml_cdash_class.h
    model/xml_cdash_class_domains.h
    model/xml_cdash_class_field.h
    model/xml_cdash_domain.h
    model/xml_cdash_domain_field.h
    model/xml_cdash_domain_fields.h
    model/xml_cdash_product.h
    model/xml_cdash_product_classes.h
    model/xml_cdash_product_domains.h
    model/xml_cdashig_class.h
    model/xml_cdashig_class_domains.h
    model/xml_cdashig_class_scenarios.h
    model/xml_cdashig_domain.h
    model/xml_cdashig_domain_field.h
    model/xml_cdashig_domain_fields.h
    model/xml_cdashig_product.h
    model/xml_cdashig_product_classes.h
    model/xml_cdashig_product_domains.h
    model/xml_cdashig_product_scenarios.h
    model/xml_cdashig_scenario.h
    model/xml_cdashig_scenario_field.h
    model/xml_cdashig_scenario_fields.h
    model/xml_ct_codelist.h
    model/xml_ct_codelist_terms.h
    model/xml_ct_package.h
    model/xml_ct_package_codelists.h
    model/xml_ct_packages.h
    model/xml_ct_term.h
    model/xml_lastupdated.h
    model/xml_productgroup_data_analysis.h
    model/xml_productgroup_data_collection.h
    model/xml_productgroup_data_tabulation.h
    model/xml_productgroup_terminology.h
    model/xml_products.h
    model/xml_qrs_item.h
    model/xml_qrs_items.h
    model/xml_qrs_product.h
    model/xml_qrs_responsegroup.h
    model/xml_qrs_responsegroups.h
    model/xml_root_cdash_class_field.h
    model/xml_root_cdash_domain_field.h
    model/xml_root_cdashig_domain_field.h
    model/xml_root_cdashig_scenario_field.h
    model/xml_root_ct_codelist.h
    model/xml_root_ct_term.h
    model/xml_root_sdtm_class_variable.h
    model/xml_root_sdtm_dataset_variable.h
    model/xml_root_sdtmig_dataset_variable.h
    model/xml_root_sendig_dataset_variable.h
    model/xml_sdtm_class.h
    model/xml_sdtm_class_datasets.h
    model/xml_sdtm_class_variable.h
    model/xml_sdtm_class_variables.h
    model/xml_sdtm_classes.h
    model/xml_sdtm_dataset.h
    model/xml_sdtm_dataset_variable.h
    model/xml_sdtm_dataset_variables.h
    model/xml_sdtm_datasets.h
    model/xml_sdtm_product.h
    model/xml_sdtmig_class.h
    model/xml_sdtmig_class_datasets.h
    model/xml_sdtmig_classes.h
    model/xml_sdtmig_dataset.h
    model/xml_sdtmig_dataset_variable.h
    model/xml_sdtmig_dataset_variables.h
    model/xml_sdtmig_datasets.h
    model/xml_sdtmig_product.h
    model/xml_sendig_class.h
    model/xml_sendig_class_datasets.h
    model/xml_sendig_classes.h
    model/xml_sendig_dataset.h
    model/xml_sendig_dataset_variable.h
    model/xml_sendig_dataset_variables.h
    model/xml_sendig_datasets.h
    model/xml_sendig_product.h
    api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.h
    api/CDASHImplementationGuideCDASHIGAPI.h
    api/ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.h
    api/ControlledTerminologyCTAPI.h
    api/DefaultAPI.h
    api/MeasuresAPI.h
    api/SDTMImplementationGuideSDTMIGAPI.h
    api/SENDImplementationGuideSENDIGAPI.h
    api/SearchesAPI.h
    api/StatusesAPI.h
    api/StudyDataTabulationModelSDTMAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
if(NOT BUILD_STATIC_LIBS)
  add_library(${pkgName} ${SRCS} ${HDRS})
else()
  add_library(${pkgName} STATIC ${SRCS} ${HDRS})
endif()
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.c
#    unit-tests/manual-CDASHImplementationGuideCDASHIGAPI.c
#    unit-tests/manual-ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.c
#    unit-tests/manual-ControlledTerminologyCTAPI.c
#    unit-tests/manual-DefaultAPI.c
#    unit-tests/manual-MeasuresAPI.c
#    unit-tests/manual-SDTMImplementationGuideSDTMIGAPI.c
#    unit-tests/manual-SENDImplementationGuideSENDIGAPI.c
#    unit-tests/manual-SearchesAPI.c
#    unit-tests/manual-StatusesAPI.c
#    unit-tests/manual-StudyDataTabulationModelSDTMAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
