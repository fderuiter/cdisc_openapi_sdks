note
    description: "API tests for MEASURES_API"
    date: "$Date$"
    revision: "$Revision$"


class MEASURES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_qrs_measure_version_get
            -- 
            --
            -- Get QRS Product
        local
            l_response: QRS_PRODUCT
            l_measure: STRING_32
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_measure
            -- l_version

            -- l_response := api.mdr_qrs_measure_version_get(l_measure, l_version)
            assert ("not_implemented", False)
        end

    test_mdr_qrs_measure_version_items_get
            -- 
            --
            -- Get QRS Item List
        local
            l_response: QRS_ITEMS
            l_measure: STRING_32
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_measure
            -- l_version

            -- l_response := api.mdr_qrs_measure_version_items_get(l_measure, l_version)
            assert ("not_implemented", False)
        end

    test_mdr_qrs_measure_version_items_item_get
            -- 
            --
            -- Get QRS Item
        local
            l_response: QRS_ITEM
            l_measure: STRING_32
            l_version: STRING_32
            l_item: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_measure
            -- l_version
            -- l_item

            -- l_response := api.mdr_qrs_measure_version_items_item_get(l_measure, l_version, l_item)
            assert ("not_implemented", False)
        end

    test_mdr_qrs_measure_version_responsegroups_get
            -- 
            --
            -- Get QRS Response Group List
        local
            l_response: QRS_RESPONSEGROUPS
            l_measure: STRING_32
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_measure
            -- l_version

            -- l_response := api.mdr_qrs_measure_version_responsegroups_get(l_measure, l_version)
            assert ("not_implemented", False)
        end

    test_mdr_qrs_measure_version_responsegroups_responsegroup_get
            -- 
            --
            -- Get QRS Response Group
        local
            l_response: QRS_RESPONSEGROUP
            l_measure: STRING_32
            l_version: STRING_32
            l_responsegroup: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_measure
            -- l_version
            -- l_responsegroup

            -- l_response := api.mdr_qrs_measure_version_responsegroups_responsegroup_get(l_measure, l_version, l_responsegroup)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: MEASURES_API
            -- Create an object instance of `MEASURES_API'.
        once
            create { MEASURES_API } Result
        end

end
