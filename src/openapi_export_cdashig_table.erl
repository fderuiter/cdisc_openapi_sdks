-module(openapi_export_cdashig_table).

-export([encode/1]).

-export_type([openapi_export_cdashig_table/0]).

-type openapi_export_cdashig_table() ::
    #{ 'domain_variables' => list(),
       'scenario_variables' => list()
     }.

encode(#{ 'domain_variables' := DomainVariables,
          'scenario_variables' := ScenarioVariables
        }) ->
    #{ 'domain-variables' => DomainVariables,
       'scenario-variables' => ScenarioVariables
     }.
