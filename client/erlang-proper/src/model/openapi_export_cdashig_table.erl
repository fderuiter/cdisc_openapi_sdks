-module(openapi_export_cdashig_table).

-include("openapi.hrl").

-export([openapi_export_cdashig_table/0]).

-export([openapi_export_cdashig_table/1]).

-export_type([openapi_export_cdashig_table/0]).

-type openapi_export_cdashig_table() ::
  [ {'domain_variables', list(openapi_export_cdashig_domain_variables_row:openapi_export_cdashig_domain_variables_row()) }
  | {'scenario_variables', list(openapi_export_cdashig_scenario_variables_row:openapi_export_cdashig_scenario_variables_row()) }
  ].


openapi_export_cdashig_table() ->
    openapi_export_cdashig_table([]).

openapi_export_cdashig_table(Fields) ->
  Default = [ {'domain-variables', list(openapi_export_cdashig_domain_variables_row:openapi_export_cdashig_domain_variables_row()) }
            , {'scenario-variables', list(openapi_export_cdashig_scenario_variables_row:openapi_export_cdashig_scenario_variables_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

