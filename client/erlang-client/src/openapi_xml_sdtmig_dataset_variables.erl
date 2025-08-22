-module(openapi_xml_sdtmig_dataset_variables).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_dataset_variables/0]).

-type openapi_xml_sdtmig_dataset_variables() ::
    #{ 'self' => openapi_sdtmig_dataset_variables:openapi_sdtmig_dataset_variables()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
