note
    description: "API tests for CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API"
    date: "$Date$"
    revision: "$Revision$"


class CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_cdash_version_classes_class_domains_get
            -- 
            --
            -- Get CDASH Class Domain List
        local
            l_response: CDASH_CLASS_DOMAINS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_cdash_version_classes_class_domains_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_classes_class_fields_field_get
            -- 
            --
            -- Get CDASH Class Field
        local
            l_response: CDASH_CLASS_FIELD
            l_version: STRING_32
            l_var_class: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class
            -- l_field

            -- l_response := api.mdr_cdash_version_classes_class_fields_field_get(l_version, l_var_class, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_classes_class_get
            -- 
            --
            -- Get CDASH Class
        local
            l_response: CDASH_CLASS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_cdash_version_classes_class_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_classes_get
            -- 
            --
            -- Get CDASH Class List
        local
            l_response: CDASH_PRODUCT_CLASSES
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdash_version_classes_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_domains_domain_fields_field_get
            -- 
            --
            -- Get CDASH Domain Field
        local
            l_response: CDASH_DOMAIN_FIELD
            l_version: STRING_32
            l_domain: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain
            -- l_field

            -- l_response := api.mdr_cdash_version_domains_domain_fields_field_get(l_version, l_domain, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_domains_domain_fields_get
            -- 
            --
            -- Get CDASH Domain Field List
        local
            l_response: CDASH_DOMAIN_FIELDS
            l_version: STRING_32
            l_domain: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain

            -- l_response := api.mdr_cdash_version_domains_domain_fields_get(l_version, l_domain)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_domains_domain_get
            -- 
            --
            -- Get CDASH Domain
        local
            l_response: CDASH_DOMAIN
            l_version: STRING_32
            l_domain: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_domain

            -- l_response := api.mdr_cdash_version_domains_domain_get(l_version, l_domain)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_domains_get
            -- 
            --
            -- Get CDASH Domain List
        local
            l_response: CDASH_PRODUCT_DOMAINS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdash_version_domains_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_cdash_version_get
            -- 
            --
            -- Get CDASH Product
        local
            l_response: CDASH_PRODUCT
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_cdash_version_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_root_cdash_classes_class_fields_field_get
            -- 
            --
            -- Get Root CDASH Class Field
        local
            l_response: ROOT_CDASH_CLASS_FIELD
            l_var_class: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_var_class
            -- l_field

            -- l_response := api.mdr_root_cdash_classes_class_fields_field_get(l_var_class, l_field)
            assert ("not_implemented", False)
        end

    test_mdr_root_cdash_domains_domain_fields_field_get
            -- 
            --
            -- Get Root CDASH Domain Field
        local
            l_response: ROOT_CDASH_DOMAIN_FIELD
            l_domain: STRING_32
            l_field: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_domain
            -- l_field

            -- l_response := api.mdr_root_cdash_domains_domain_fields_field_get(l_domain, l_field)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API
            -- Create an object instance of `CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API'.
        once
            create { CLINICALDATAACQUISITIONSTANDARDSHARMONIZATIONCDASH_API } Result
        end

end
