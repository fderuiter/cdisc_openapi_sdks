-module(openapi_cdashig_scenario).

-include("openapi.hrl").

-export([openapi_cdashig_scenario/0]).

-export([openapi_cdashig_scenario/1]).

-export_type([openapi_cdashig_scenario/0]).

-type openapi_cdashig_scenario() ::
  [ {'ordinal', binary() }
  | {'domain', binary() }
  | {'scenario', binary() }
  | {'_links', openapi_cdashig_scenario_links:openapi_cdashig_scenario_links() }
  | {'fields', list(openapi_cdashig_scenario_field:openapi_cdashig_scenario_field()) }
  ].


openapi_cdashig_scenario() ->
    openapi_cdashig_scenario([]).

openapi_cdashig_scenario(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'domain', binary() }
            , {'scenario', binary() }
            , {'_links', openapi_cdashig_scenario_links:openapi_cdashig_scenario_links() }
            , {'fields', list(openapi_cdashig_scenario_field:openapi_cdashig_scenario_field()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

