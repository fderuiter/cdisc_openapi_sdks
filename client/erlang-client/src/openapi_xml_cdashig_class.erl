-module(openapi_xml_cdashig_class).

-export([encode/1]).

-export_type([openapi_xml_cdashig_class/0]).

-type openapi_xml_cdashig_class() ::
    #{ 'self' => openapi_cdashig_class:openapi_cdashig_class()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
