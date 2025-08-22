-module(openapi_cdashig_class_scenarios_links).

-include("openapi.hrl").

-export([openapi_cdashig_class_scenarios_links/0]).

-export([openapi_cdashig_class_scenarios_links/1]).

-export_type([openapi_cdashig_class_scenarios_links/0]).

-type openapi_cdashig_class_scenarios_links() ::
  [ {'self', openapi_cdashig_class_scenarios_ref:openapi_cdashig_class_scenarios_ref() }
  | {'scenarios', list(openapi_cdashig_scenario_ref_element:openapi_cdashig_scenario_ref_element()) }
  ].


openapi_cdashig_class_scenarios_links() ->
    openapi_cdashig_class_scenarios_links([]).

openapi_cdashig_class_scenarios_links(Fields) ->
  Default = [ {'self', openapi_cdashig_class_scenarios_ref:openapi_cdashig_class_scenarios_ref() }
            , {'scenarios', list(openapi_cdashig_scenario_ref_element:openapi_cdashig_scenario_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

