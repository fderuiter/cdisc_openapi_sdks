-module(openapi_xml_cdashig_scenario_fields).

-export([encode/1]).

-export_type([openapi_xml_cdashig_scenario_fields/0]).

-type openapi_xml_cdashig_scenario_fields() ::
    #{ 'self' => openapi_cdashig_scenario_fields:openapi_cdashig_scenario_fields()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
