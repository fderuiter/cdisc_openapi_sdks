-module(openapi_xml_adam_varset).

-export([encode/1]).

-export_type([openapi_xml_adam_varset/0]).

-type openapi_xml_adam_varset() ::
    #{ 'self' => openapi_adam_varset:openapi_adam_varset()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
