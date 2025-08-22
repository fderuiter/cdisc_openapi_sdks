-module(openapi_xml_sdtmig_class).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_class/0]).

-type openapi_xml_sdtmig_class() ::
    #{ 'self' => openapi_sdtmig_class:openapi_sdtmig_class()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
