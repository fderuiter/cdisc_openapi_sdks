-module(openapi_xml_sdtmig_dataset).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_dataset/0]).

-type openapi_xml_sdtmig_dataset() ::
    #{ 'self' => openapi_sdtmig_dataset:openapi_sdtmig_dataset()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
