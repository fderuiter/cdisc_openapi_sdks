-module(openapi_xml_sdtmig_datasets).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_datasets/0]).

-type openapi_xml_sdtmig_datasets() ::
    #{ 'self' => openapi_sdtmig_datasets:openapi_sdtmig_datasets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
