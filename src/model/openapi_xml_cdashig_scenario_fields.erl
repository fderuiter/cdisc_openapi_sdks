-module(openapi_xml_cdashig_scenario_fields).

-include("openapi.hrl").

-export([openapi_xml_cdashig_scenario_fields/0]).

-export([openapi_xml_cdashig_scenario_fields/1]).

-export_type([openapi_xml_cdashig_scenario_fields/0]).

-type openapi_xml_cdashig_scenario_fields() ::
  [ {'self', openapi_cdashig_scenario_fields:openapi_cdashig_scenario_fields() }
  ].


openapi_xml_cdashig_scenario_fields() ->
    openapi_xml_cdashig_scenario_fields([]).

openapi_xml_cdashig_scenario_fields(Fields) ->
  Default = [ {'self', openapi_cdashig_scenario_fields:openapi_cdashig_scenario_fields() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

