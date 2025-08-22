-module(openapi_cdashig_class_scenarios).

-include("openapi.hrl").

-export([openapi_cdashig_class_scenarios/0]).

-export([openapi_cdashig_class_scenarios/1]).

-export_type([openapi_cdashig_class_scenarios/0]).

-type openapi_cdashig_class_scenarios() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_cdashig_class_scenarios_links:openapi_cdashig_class_scenarios_links() }
  ].


openapi_cdashig_class_scenarios() ->
    openapi_cdashig_class_scenarios([]).

openapi_cdashig_class_scenarios(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_cdashig_class_scenarios_links:openapi_cdashig_class_scenarios_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

