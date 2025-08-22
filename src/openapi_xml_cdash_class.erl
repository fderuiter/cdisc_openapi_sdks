-module(openapi_xml_cdash_class).

-export([encode/1]).

-export_type([openapi_xml_cdash_class/0]).

-type openapi_xml_cdash_class() ::
    #{ 'self' => openapi_cdash_class:openapi_cdash_class()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
