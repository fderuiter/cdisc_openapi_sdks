-module(openapi_xml_sdtm_dataset_variable).

-export([encode/1]).

-export_type([openapi_xml_sdtm_dataset_variable/0]).

-type openapi_xml_sdtm_dataset_variable() ::
    #{ 'self' => openapi_sdtm_dataset_variable:openapi_sdtm_dataset_variable()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
