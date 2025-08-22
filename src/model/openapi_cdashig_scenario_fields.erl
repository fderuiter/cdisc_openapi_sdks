-module(openapi_cdashig_scenario_fields).

-include("openapi.hrl").

-export([openapi_cdashig_scenario_fields/0]).

-export([openapi_cdashig_scenario_fields/1]).

-export_type([openapi_cdashig_scenario_fields/0]).

-type openapi_cdashig_scenario_fields() ::
  [ {'ordinal', binary() }
  | {'domain', binary() }
  | {'scenario', binary() }
  | {'_links', openapi_cdashig_scenario_fields_links:openapi_cdashig_scenario_fields_links() }
  ].


openapi_cdashig_scenario_fields() ->
    openapi_cdashig_scenario_fields([]).

openapi_cdashig_scenario_fields(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'domain', binary() }
            , {'scenario', binary() }
            , {'_links', openapi_cdashig_scenario_fields_links:openapi_cdashig_scenario_fields_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

