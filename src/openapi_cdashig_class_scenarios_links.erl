-module(openapi_cdashig_class_scenarios_links).

-export([encode/1]).

-export_type([openapi_cdashig_class_scenarios_links/0]).

-type openapi_cdashig_class_scenarios_links() ::
    #{ 'self' => openapi_cdashig_class_scenarios_ref:openapi_cdashig_class_scenarios_ref(),
       'scenarios' => list()
     }.

encode(#{ 'self' := Self,
          'scenarios' := Scenarios
        }) ->
    #{ 'self' => Self,
       'scenarios' => Scenarios
     }.
