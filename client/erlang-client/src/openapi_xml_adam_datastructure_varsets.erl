-module(openapi_xml_adam_datastructure_varsets).

-export([encode/1]).

-export_type([openapi_xml_adam_datastructure_varsets/0]).

-type openapi_xml_adam_datastructure_varsets() ::
    #{ 'self' => openapi_adam_datastructure_varsets:openapi_adam_datastructure_varsets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
