-module(openapi_xml_cdashig_class_scenarios).

-export([encode/1]).

-export_type([openapi_xml_cdashig_class_scenarios/0]).

-type openapi_xml_cdashig_class_scenarios() ::
    #{ 'self' => openapi_cdashig_class_scenarios:openapi_cdashig_class_scenarios()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
