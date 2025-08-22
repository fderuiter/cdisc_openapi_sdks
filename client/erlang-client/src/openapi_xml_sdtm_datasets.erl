-module(openapi_xml_sdtm_datasets).

-export([encode/1]).

-export_type([openapi_xml_sdtm_datasets/0]).

-type openapi_xml_sdtm_datasets() ::
    #{ 'self' => openapi_sdtm_datasets:openapi_sdtm_datasets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
