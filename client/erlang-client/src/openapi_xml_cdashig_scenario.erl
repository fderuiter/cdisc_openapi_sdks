-module(openapi_xml_cdashig_scenario).

-export([encode/1]).

-export_type([openapi_xml_cdashig_scenario/0]).

-type openapi_xml_cdashig_scenario() ::
    #{ 'self' => openapi_cdashig_scenario:openapi_cdashig_scenario()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
