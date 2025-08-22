-module(openapi_xml_sdtm_class).

-export([encode/1]).

-export_type([openapi_xml_sdtm_class/0]).

-type openapi_xml_sdtm_class() ::
    #{ 'self' => openapi_sdtm_class:openapi_sdtm_class()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
