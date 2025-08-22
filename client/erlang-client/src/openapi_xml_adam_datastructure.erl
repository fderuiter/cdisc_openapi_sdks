-module(openapi_xml_adam_datastructure).

-export([encode/1]).

-export_type([openapi_xml_adam_datastructure/0]).

-type openapi_xml_adam_datastructure() ::
    #{ 'self' => openapi_adam_datastructure:openapi_adam_datastructure()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
