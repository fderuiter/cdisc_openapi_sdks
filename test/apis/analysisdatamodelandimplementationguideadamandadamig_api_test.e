note
    description: "API tests for ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API"
    date: "$Date$"
    revision: "$Revision$"


class ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_adam_product_datastructures_get
            -- 
            --
            -- Get ADaM Data Structure List
        local
            l_response: ADAM_PRODUCT_DATASTRUCTURES
            l_product: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product

            -- l_response := api.mdr_adam_product_datastructures_get(l_product)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_datastructures_structure_get
            -- 
            --
            -- Get ADaM Data Structure
        local
            l_response: ADAM_DATASTRUCTURE
            l_product: STRING_32
            l_structure: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product
            -- l_structure

            -- l_response := api.mdr_adam_product_datastructures_structure_get(l_product, l_structure)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_datastructures_structure_variables_get
            -- 
            --
            -- Get ADaM Variable List
        local
            l_response: ADAM_DATASTRUCTURE_VARIABLES
            l_product: STRING_32
            l_structure: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product
            -- l_structure

            -- l_response := api.mdr_adam_product_datastructures_structure_variables_get(l_product, l_structure)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_datastructures_structure_variables_var_get
            -- 
            --
            -- Get ADaM Variable
        local
            l_response: ADAM_VARIABLE
            l_product: STRING_32
            l_structure: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product
            -- l_structure
            -- l_var

            -- l_response := api.mdr_adam_product_datastructures_structure_variables_var_get(l_product, l_structure, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_datastructures_structure_varsets_get
            -- 
            --
            -- Get ADaM Variable Set List
        local
            l_response: ADAM_DATASTRUCTURE_VARSETS
            l_product: STRING_32
            l_structure: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product
            -- l_structure

            -- l_response := api.mdr_adam_product_datastructures_structure_varsets_get(l_product, l_structure)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_datastructures_structure_varsets_varset_get
            -- 
            --
            -- Get ADaM Variable Set
        local
            l_response: ADAM_VARSET
            l_product: STRING_32
            l_structure: STRING_32
            l_varset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product
            -- l_structure
            -- l_varset

            -- l_response := api.mdr_adam_product_datastructures_structure_varsets_varset_get(l_product, l_structure, l_varset)
            assert ("not_implemented", False)
        end

    test_mdr_adam_product_get
            -- 
            --
            -- Get ADaM Product
        local
            l_response: ADAM_PRODUCT
            l_product: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_product

            -- l_response := api.mdr_adam_product_get(l_product)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API
            -- Create an object instance of `ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API'.
        once
            create { ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API } Result
        end

end
