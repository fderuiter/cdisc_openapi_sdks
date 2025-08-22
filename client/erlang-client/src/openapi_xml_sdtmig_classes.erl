-module(openapi_xml_sdtmig_classes).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_classes/0]).

-type openapi_xml_sdtmig_classes() ::
    #{ 'self' => openapi_sdtmig_classes:openapi_sdtmig_classes()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
