-module(openapi_xml_sdtm_dataset).

-export([encode/1]).

-export_type([openapi_xml_sdtm_dataset/0]).

-type openapi_xml_sdtm_dataset() ::
    #{ 'self' => openapi_sdtm_dataset:openapi_sdtm_dataset()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
