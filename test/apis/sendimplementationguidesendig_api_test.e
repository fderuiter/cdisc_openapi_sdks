note
    description: "API tests for SENDIMPLEMENTATIONGUIDESENDIG_API"
    date: "$Date$"
    revision: "$Revision$"


class SENDIMPLEMENTATIONGUIDESENDIG_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_mdr_root_sendig_datasets_dataset_variables_var_get
            -- 
            --
            -- Get Root SENDIG Dataset Variable
        local
            l_response: ROOT_SENDIG_DATASET_VARIABLE
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_root_sendig_datasets_dataset_variables_var_get(l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_classes_class_datasets_get
            -- 
            --
            -- Get SENDIG Class Dataset List
        local
            l_response: SENDIG_CLASS_DATASETS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sendig_version_classes_class_datasets_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_classes_class_get
            -- 
            --
            -- Get SENDIG Class
        local
            l_response: SENDIG_CLASS
            l_version: STRING_32
            l_var_class: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_var_class

            -- l_response := api.mdr_sendig_version_classes_class_get(l_version, l_var_class)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_classes_get
            -- 
            --
            -- Get SENDIG Class List
        local
            l_response: SENDIG_CLASSES
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sendig_version_classes_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_datasets_dataset_get
            -- 
            --
            -- Get SENDIG Dataset
        local
            l_response: SENDIG_DATASET
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sendig_version_datasets_dataset_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_datasets_dataset_variables_get
            -- 
            --
            -- Get SENDIG Dataset Variable List
        local
            l_response: SENDIG_DATASET_VARIABLES
            l_version: STRING_32
            l_dataset: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset

            -- l_response := api.mdr_sendig_version_datasets_dataset_variables_get(l_version, l_dataset)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_datasets_dataset_variables_var_get
            -- 
            --
            -- Get SENDIG Dataset Variable
        local
            l_response: SENDIG_DATASET_VARIABLE
            l_version: STRING_32
            l_dataset: STRING_32
            l_var: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version
            -- l_dataset
            -- l_var

            -- l_response := api.mdr_sendig_version_datasets_dataset_variables_var_get(l_version, l_dataset, l_var)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_datasets_get
            -- 
            --
            -- Get SENDIG Dataset List
        local
            l_response: SENDIG_DATASETS
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sendig_version_datasets_get(l_version)
            assert ("not_implemented", False)
        end

    test_mdr_sendig_version_get
            -- 
            --
            -- Get SENDIG product
        local
            l_response: SENDIG_PRODUCT
            l_version: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_version

            -- l_response := api.mdr_sendig_version_get(l_version)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SENDIMPLEMENTATIONGUIDESENDIG_API
            -- Create an object instance of `SENDIMPLEMENTATIONGUIDESENDIG_API'.
        once
            create { SENDIMPLEMENTATIONGUIDESENDIG_API } Result
        end

end
