note
    description: "API tests for SEARCHES_API"
    date: "$Date$"
    revision: "$Revision$"


class SEARCHES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_search_get
            -- 
            --
            -- Get Search Results Across CDISC Library
        local
            l_response: DEFAULT_SEARCH_RESPONSE
            l_q: STRING_32
            l_highlight: STRING_32
            l_start: REAL_32
            l_page_size: REAL_32
            l_var_class: STRING_32
            l_codelist: STRING_32
            l_concept_id: STRING_32
            l_core: STRING_32
            l_data_structure: STRING_32
            l_dataset_structure: STRING_32
            l_definition: STRING_32
            l_description: STRING_32
            l_domain: STRING_32
            l_effective_date: STRING_32
            l_extensible: STRING_32
            l_href: STRING_32
            l_label: STRING_32
            l_measure_type: STRING_32
            l_name: STRING_32
            l_preferred_term: STRING_32
            l_product: STRING_32
            l_product_group: STRING_32
            l_registration_status: STRING_32
            l_role_description: STRING_32
            l_sdtm_target: STRING_32
            l_simple_datatype: STRING_32
            l_submission_value: STRING_32
            l_synonyms: STRING_32
            l_type: STRING_32
            l_ui_href: STRING_32
            l_value_domain: STRING_32
            l_variable_set: STRING_32
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_q

            -- l_response := api.mdr_search_get(l_q, l_highlight, l_start, l_page_size, l_var_class, l_codelist, l_concept_id, l_core, l_data_structure, l_dataset_structure, l_definition, l_description, l_domain, l_effective_date, l_extensible, l_href, l_label, l_measure_type, l_name, l_preferred_term, l_product, l_product_group, l_registration_status, l_role_description, l_sdtm_target, l_simple_datatype, l_submission_value, l_synonyms, l_type, l_ui_href, l_value_domain, l_variable_set, l_version)
            assert ("not_implemented", False)
        end

    test_mdr_search_scopes_get
            -- 
            --
            -- Get Search Results Across CDISC Library
        local
            l_response: MODEL_MDR_SEARCH_SCOPES_GET_200_RESPONSE
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_search_scopes_get
            assert ("not_implemented", False)
        end

    test_mdr_search_scopes_scope_get
            -- 
            --
            -- Get Search Results Limited to Scope
        local
            l_response: SCOPE_VALUES
            l_scope: DEFAULT_SEARCH_SCOPES
        do
            -- TODO: Initialize required params.
            -- l_scope

            -- l_response := api.mdr_search_scopes_scope_get(l_scope)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SEARCHES_API
            -- Create an object instance of `SEARCHES_API'.
        once
            create { SEARCHES_API } Result
        end

end
