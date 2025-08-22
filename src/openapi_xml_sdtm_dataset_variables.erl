-module(openapi_xml_sdtm_dataset_variables).

-export([encode/1]).

-export_type([openapi_xml_sdtm_dataset_variables/0]).

-type openapi_xml_sdtm_dataset_variables() ::
    #{ 'self' => openapi_sdtm_dataset_variables:openapi_sdtm_dataset_variables()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
