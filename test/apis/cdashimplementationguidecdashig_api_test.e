note
    description: "API tests for CDASHIMPLEMENTATIONGUIDECDASHIG_API"
    date: "$Date$"
    revision: "$Revision$"


class CDASHIMPLEMENTATIONGUIDECDASHIG_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_cdashig_version_classes_class_domains_get
            -- 
            --
            -- Get CDASHIG Class Domain List
        local
            l_response: CDASHIG_CLASS_DOMAINS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_cdashig_version_classes_class_domains_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_classes_class_get
            -- 
            --
            -- Get CDASHIG Class
        local
            l_response: CDASHIG_CLASS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_cdashig_version_classes_class_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_classes_class_scenarios_get
            -- 
            --
            -- Get CDASHIG Class Scenario List
        local
            l_response: CDASHIG_CLASS_SCENARIOS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_cdashig_version_classes_class_scenarios_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_classes_get
            -- 
            --
            -- Get CDASHIG Class List
        local
            l_response: CDASHIG_PRODUCT_CLASSES
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdashig_version_classes_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_domains_domain_fields_field_get
            -- 
            --
            -- Get CDASHIG Domain Field
        local
            l_response: CDASHIG_DOMAIN_FIELD
            l_version: STRING_32
            l_domain: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain
            -- l_field

            -- l_response := api.mdr_cdashig_version_domains_domain_fields_field_get(l_version, l_domain, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_domains_domain_fields_get
            -- 
            --
            -- Get CDASHIG Domain Field List
        local
            l_response: CDASHIG_DOMAIN_FIELDS
            l_version: STRING_32
            l_domain: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain

            -- l_response := api.mdr_cdashig_version_domains_domain_fields_get(l_version, l_domain)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_domains_domain_get
            -- 
            --
            -- Get CDASHIG Domain
        local
            l_response: CDASHIG_DOMAIN
            l_version: STRING_32
            l_domain: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain

            -- l_response := api.mdr_cdashig_version_domains_domain_get(l_version, l_domain)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_domains_get
            -- 
            --
            -- Get CDASHIG Domain List
        local
            l_response: CDASHIG_PRODUCT_DOMAINS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdashig_version_domains_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_get
            -- 
            --
            -- Get CDASHIG Product
        local
            l_response: CDASHIG_PRODUCT
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdashig_version_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_scenarios_domain_scenario_fields_field_get
            -- 
            --
            -- Get CDASHIG Scenario Field
        local
            l_response: CDASHIG_SCENARIO_FIELD
            l_version: STRING_32
            l_domain: STRING_32
            l_scenario: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain
            -- l_scenario
            -- l_field

            -- l_response := api.mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(l_version, l_domain, l_scenario, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_scenarios_domain_scenario_fields_get
            -- 
            --
            -- Get CDASHIG Scenario Field List
        local
            l_response: CDASHIG_SCENARIO_FIELDS
            l_version: STRING_32
            l_domain: STRING_32
            l_scenario: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain
            -- l_scenario

            -- l_response := api.mdr_cdashig_version_scenarios_domain_scenario_fields_get(l_version, l_domain, l_scenario)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_scenarios_domain_scenario_get
            -- 
            --
            -- Get CDASHIG Scenario
        local
            l_response: CDASHIG_SCENARIO
            l_version: STRING_32
            l_domain: STRING_32
            l_scenario: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain
            -- l_scenario

            -- l_response := api.mdr_cdashig_version_scenarios_domain_scenario_get(l_version, l_domain, l_scenario)
            assert ("not_implemented", False)
        end

    test_mdr_cdashig_version_scenarios_get
            -- 
            --
            -- Get CDASHIG Scenario List
        local
            l_response: CDASHIG_PRODUCT_SCENARIOS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdashig_version_scenarios_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_root_cdashig_domains_domain_fields_field_get
            -- 
            --
            -- Get Root CDASHIG Domain Field
        local
            l_response: ROOT_CDASHIG_DOMAIN_FIELD
            l_domain: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_domain
            -- l_field

            -- l_response := api.mdr_root_cdashig_domains_domain_fields_field_get(l_domain, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_root_cdashig_scenarios_domain_scenario_fields_field_get
            -- 
            --
            -- Get Root CDASHIG Scenario Field
        local
            l_response: ROOT_CDASHIG_SCENARIO_FIELD
            l_domain: STRING_32
            l_scenario: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_domain
            -- l_scenario
            -- l_field

            -- l_response := api.mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(l_domain, l_scenario, l_field)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CDASHIMPLEMENTATIONGUIDECDASHIG_API
            -- Create an object instance of `CDASHIMPLEMENTATIONGUIDECDASHIG_API'.
        once
            create { CDASHIMPLEMENTATIONGUIDECDASHIG_API } Result
        end

end
