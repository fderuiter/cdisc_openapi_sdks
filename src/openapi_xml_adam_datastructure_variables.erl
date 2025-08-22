-module(openapi_xml_adam_datastructure_variables).

-export([encode/1]).

-export_type([openapi_xml_adam_datastructure_variables/0]).

-type openapi_xml_adam_datastructure_variables() ::
    #{ 'self' => openapi_adam_datastructure_variables:openapi_adam_datastructure_variables()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
