note
    description: "API tests for STATUSES_API"
    date: "$Date$"
    revision: "$Revision$"


class STATUSES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_health_get
            -- 
            --
            -- Check health of system components
        local
            l_response: HEALTH
        do
            -- TODO: Initialize required params.

            -- l_response := api.health_get
            assert ("not_implemented", False)
        end

    test_mdr_maintenance_get
            -- 
            --
            -- Set maintenance mode and message
        local
            l_response: MAINTENANCE_BODY
        do
            -- TODO: Initialize required params.

            -- l_response := api.mdr_maintenance_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: STATUSES_API
            -- Create an object instance of `STATUSES_API'.
        once
            create { STATUSES_API } Result
        end

end
