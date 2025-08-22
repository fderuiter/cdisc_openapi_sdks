note
    description: "API tests for STUDYDATATABULATIONMODELSDTM_API"
    date: "$Date$"
    revision: "$Revision$"


class STUDYDATATABULATIONMODELSDTM_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_root_sdtm_classes_class_variables_var_get
            -- 
            --
            -- Get Root of SDTM Class Variable
        local
            l_response: ROOT_SDTM_CLASS_VARIABLE
            l_var_class: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_var_class
            -- l_var

            -- l_response := api.mdr_root_sdtm_classes_class_variables_var_get(l_var_class, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_root_sdtm_datasets_dataset_variables_var_get
            -- 
            --
            -- Get Root SDTM Dataset Variable
        local
            l_response: ROOT_SDTM_DATASET_VARIABLE
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_root_sdtm_datasets_dataset_variables_var_get(l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_classes_class_datasets_get
            -- 
            --
            -- Get SDTM Class Dataset List
        local
            l_response: SDTM_CLASS_DATASETS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sdtm_version_classes_class_datasets_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_classes_class_get
            -- 
            --
            -- Get SDTM Class
        local
            l_response: SDTM_CLASS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sdtm_version_classes_class_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_classes_class_variables_get
            -- 
            --
            -- Get SDTM Class Variable List
        local
            l_response: SDTM_CLASS_VARIABLES
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sdtm_version_classes_class_variables_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_classes_class_variables_var_get
            -- 
            --
            -- Get SDTM Class Variable
        local
            l_response: SDTM_CLASS_VARIABLE
            l_version: STRING_32
            l_var_class: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class
            -- l_var

            -- l_response := api.mdr_sdtm_version_classes_class_variables_var_get(l_version, l_var_class, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_classes_get
            -- 
            --
            -- Get SDTM Class List
        local
            l_response: SDTM_CLASSES
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtm_version_classes_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_datasets_dataset_get
            -- 
            --
            -- Get SDTM Dataset
        local
            l_response: SDTM_DATASET
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sdtm_version_datasets_dataset_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_datasets_dataset_variables_get
            -- 
            --
            -- Get SDTM Dataset Variable List
        local
            l_response: SDTM_DATASET_VARIABLES
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sdtm_version_datasets_dataset_variables_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_datasets_dataset_variables_var_get
            -- 
            --
            -- Get SDTM Dataset Variable
        local
            l_response: SDTM_DATASET_VARIABLE
            l_version: STRING_32
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_sdtm_version_datasets_dataset_variables_var_get(l_version, l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_datasets_get
            -- 
            --
            -- Get SDTM Dataset List
        local
            l_response: SDTM_DATASETS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtm_version_datasets_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sdtm_version_get
            -- 
            --
            -- Get SDTM product
        local
            l_response: SDTM_PRODUCT
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sdtm_version_get(l_version)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: STUDYDATATABULATIONMODELSDTM_API
            -- Create an object instance of `STUDYDATATABULATIONMODELSDTM_API'.
        once
            create { STUDYDATATABULATIONMODELSDTM_API } Result
        end

end
