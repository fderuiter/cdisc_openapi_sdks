-module(openapi_xml_adam_variable).

-export([encode/1]).

-export_type([openapi_xml_adam_variable/0]).

-type openapi_xml_adam_variable() ::
    #{ 'self' => openapi_adam_variable:openapi_adam_variable()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
