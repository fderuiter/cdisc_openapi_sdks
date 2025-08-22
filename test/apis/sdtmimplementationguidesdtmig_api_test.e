note
    description: "API tests for SDTMIMPLEMENTATIONGUIDESDTMIG_API"
    date: "$Date$"
    revision: "$Revision$"


class SDTMIMPLEMENTATIONGUIDESDTMIG_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_root_sdtmig_datasets_dataset_variables_var_get
            -- 
            --
            -- Get Root SDTMIG Dataset Variable
        local
            l_response: ROOT_SDTMIG_DATASET_VARIABLE
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_root_sdtmig_datasets_dataset_variables_var_get(l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_classes_class_datasets_get
            -- 
            --
            -- Get SDTMIG Class Dataset List
        local
            l_response: SDTMIG_CLASS_DATASETS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sdtmig_version_classes_class_datasets_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_classes_class_get
            -- 
            --
            -- Get SDTMIG Class
        local
            l_response: SDTMIG_CLASS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sdtmig_version_classes_class_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_classes_get
            -- 
            --
            -- Get SDTMIG Class List
        local
            l_response: SDTMIG_CLASSES
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtmig_version_classes_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_datasets_dataset_get
            -- 
            --
            -- Get SDTMIG Dataset
        local
            l_response: SDTMIG_DATASET
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sdtmig_version_datasets_dataset_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_datasets_dataset_variables_get
            -- 
            --
            -- Get SDTMIG Dataset Variable List
        local
            l_response: SDTMIG_DATASET_VARIABLES
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sdtmig_version_datasets_dataset_variables_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_datasets_dataset_variables_var_get
            -- 
            --
            -- Get SDTMIG Dataset Variable
        local
            l_response: SDTMIG_DATASET_VARIABLE
            l_version: STRING_32
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_sdtmig_version_datasets_dataset_variables_var_get(l_version, l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_datasets_get
            -- 
            --
            -- Get SDTMIG Dataset List
        local
            l_response: SDTMIG_DATASETS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtmig_version_datasets_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sdtmig_version_get
            -- 
            --
            -- Get SDTMIG product
        local
            l_response: SDTMIG_PRODUCT
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtmig_version_get(l_version)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SDTMIMPLEMENTATIONGUIDESDTMIG_API
            -- Create an object instance of `SDTMIMPLEMENTATIONGUIDESDTMIG_API'.
        once
            create { SDTMIMPLEMENTATIONGUIDESDTMIG_API } Result
        end

end
