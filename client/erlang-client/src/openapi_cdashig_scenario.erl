-module(openapi_cdashig_scenario).

-export([encode/1]).

-export_type([openapi_cdashig_scenario/0]).

-type openapi_cdashig_scenario() ::
    #{ 'ordinal' => binary(),
       'domain' => binary(),
       'scenario' => binary(),
       '_links' => openapi_cdashig_scenario_links:openapi_cdashig_scenario_links(),
       'fields' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'domain' := Domain,
          'scenario' := Scenario,
          '_links' := Links,
          'fields' := Fields
        }) ->
    #{ 'ordinal' => Ordinal,
       'domain' => Domain,
       'scenario' => Scenario,
       '_links' => Links,
       'fields' => Fields
     }.
