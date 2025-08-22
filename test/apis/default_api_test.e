note
    description: "API tests for DEFAULT_API"
    date: "$Date$"
    revision: "$Revision$"


class DEFAULT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_about_get
            -- 
            --
            -- Get Information About CDISC Library
        local
            l_response: ABOUT
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_about_get
            assert ("not_implemented", False)
        end

    test_mdr_lastupdated_get
            -- 
            --
            -- Get CDISC Library Last Updated
        local
            l_response: LASTUPDATED
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_lastupdated_get
            assert ("not_implemented", False)
        end

    test_mdr_products_data_analysis_get
            -- 
            --
            -- Get CDISC Library Product Group Data Analysis
        local
            l_response: PRODUCTGROUP_DATA_ANALYSIS
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_data_analysis_get
            assert ("not_implemented", False)
        end

    test_mdr_products_data_collection_get
            -- 
            --
            -- Get CDISC Library Product Group Data Collection
        local
            l_response: PRODUCTGROUP_DATA_COLLECTION
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_data_collection_get
            assert ("not_implemented", False)
        end

    test_mdr_products_data_tabulation_get
            -- 
            --
            -- Get CDISC Library Product Group Data Tabulation
        local
            l_response: PRODUCTGROUP_DATA_TABULATION
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_data_tabulation_get
            assert ("not_implemented", False)
        end

    test_mdr_products_get
            -- 
            --
            -- Get CDISC Library Products
        local
            l_response: PRODUCTS
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_get
            assert ("not_implemented", False)
        end

    test_mdr_products_measures_get
            -- 
            --
            -- Get CDISC Library Product Group QRS
        local
            l_response: PRODUCTGROUP_QRS
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_measures_get
            assert ("not_implemented", False)
        end

    test_mdr_products_terminology_get
            -- 
            --
            -- Get CDISC Library Product Group Terminology
        local
            l_response: PRODUCTGROUP_TERMINOLOGY
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_products_terminology_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: DEFAULT_API
            -- Create an object instance of `DEFAULT_API'.
        once
            create { DEFAULT_API } Result
        end

end
