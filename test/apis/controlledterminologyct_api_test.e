note
    description: "API tests for CONTROLLEDTERMINOLOGYCT_API"
    date: "$Date$"
    revision: "$Revision$"


class CONTROLLEDTERMINOLOGYCT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_ct_packages_get
            -- 
            --
            -- Get CDISC Library CT Package List
        local
            l_response: CT_PACKAGES
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_ct_packages_get
            assert ("not_implemented", False)
        end

    test_mdr_ct_packages_package_codelists_codelist_get
            -- 
            --
            -- Get CDISC Library CT Package Codelist
        local
            l_response: CT_CODELIST
            l_package: STRING_32
            l_codelist: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_package
            -- l_codelist

            -- l_response := api.mdr_ct_packages_package_codelists_codelist_get(l_package, l_codelist)
            assert ("not_implemented", False)
        end

    test_mdr_ct_packages_package_codelists_codelist_terms_get
            -- 
            --
            -- Get CDISC Library CT Package Codelist Term List
        local
            l_response: CT_CODELIST_TERMS
            l_package: STRING_32
            l_codelist: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_package
            -- l_codelist

            -- l_response := api.mdr_ct_packages_package_codelists_codelist_terms_get(l_package, l_codelist)
            assert ("not_implemented", False)
        end

    test_mdr_ct_packages_package_codelists_codelist_terms_term_get
            -- 
            --
            -- Get CDISC Library CT Package Codelist Term
        local
            l_response: CT_TERM
            l_package: STRING_32
            l_codelist: STRING_32
            l_term: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_package
            -- l_codelist
            -- l_term

            -- l_response := api.mdr_ct_packages_package_codelists_codelist_terms_term_get(l_package, l_codelist, l_term)
            assert ("not_implemented", False)
        end

    test_mdr_ct_packages_package_codelists_get
            -- 
            --
            -- Get CDISC Library CT Package Codelist List
        local
            l_response: CT_PACKAGE_CODELISTS
            l_package: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_package

            -- l_response := api.mdr_ct_packages_package_codelists_get(l_package)
            assert ("not_implemented", False)
        end

    test_mdr_ct_packages_product_get
            -- 
            --
            -- Get CDISC Library CT Package
        local
            l_response: CT_PACKAGE
            l_product: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product

            -- l_response := api.mdr_ct_packages_product_get(l_product)
            assert ("not_implemented", False)
        end

    test_mdr_root_ct_product_group_codelists_codelist_get
            -- 
            --
            -- Get CDISC Library Root CT Codelist
        local
            l_response: ROOT_CT_CODELIST
            l_product_group: STRING_32
            l_codelist: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product_group
            -- l_codelist

            -- l_response := api.mdr_root_ct_product_group_codelists_codelist_get(l_product_group, l_codelist)
            assert ("not_implemented", False)
        end

    test_mdr_root_ct_product_group_codelists_codelist_terms_term_get
            -- 
            --
            -- Get CDISC Library Root CT Term
        local
            l_response: ROOT_CT_TERM
            l_product_group: STRING_32
            l_codelist: STRING_32
            l_term: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product_group
            -- l_codelist
            -- l_term

            -- l_response := api.mdr_root_ct_product_group_codelists_codelist_terms_term_get(l_product_group, l_codelist, l_term)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CONTROLLEDTERMINOLOGYCT_API
            -- Create an object instance of `CONTROLLEDTERMINOLOGYCT_API'.
        once
            create { CONTROLLEDTERMINOLOGYCT_API } Result
        end

end
