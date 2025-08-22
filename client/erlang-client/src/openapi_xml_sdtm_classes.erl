-module(openapi_xml_sdtm_classes).

-export([encode/1]).

-export_type([openapi_xml_sdtm_classes/0]).

-type openapi_xml_sdtm_classes() ::
    #{ 'self' => openapi_sdtm_classes:openapi_sdtm_classes()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
