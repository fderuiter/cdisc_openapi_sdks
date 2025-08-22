-module(openapi_xml_sendig_class).

-export([encode/1]).

-export_type([openapi_xml_sendig_class/0]).

-type openapi_xml_sendig_class() ::
    #{ 'self' => openapi_sendig_class:openapi_sendig_class()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
