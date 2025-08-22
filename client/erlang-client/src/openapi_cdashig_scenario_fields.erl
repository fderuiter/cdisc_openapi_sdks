-module(openapi_cdashig_scenario_fields).

-export([encode/1]).

-export_type([openapi_cdashig_scenario_fields/0]).

-type openapi_cdashig_scenario_fields() ::
    #{ 'ordinal' => binary(),
       'domain' => binary(),
       'scenario' => binary(),
       '_links' => openapi_cdashig_scenario_fields_links:openapi_cdashig_scenario_fields_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'domain' := Domain,
          'scenario' := Scenario,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'domain' => Domain,
       'scenario' => Scenario,
       '_links' => Links
     }.
