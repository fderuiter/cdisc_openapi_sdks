-module(openapi_xml_about).

-export([encode/1]).

-export_type([openapi_xml_about/0]).

-type openapi_xml_about() ::
    #{ 'self' => openapi_about:openapi_about()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
