-module(openapi_xml_sendig_classes).

-export([encode/1]).

-export_type([openapi_xml_sendig_classes/0]).

-type openapi_xml_sendig_classes() ::
    #{ 'self' => openapi_sendig_classes:openapi_sendig_classes()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
