-module(openapi_xml_cdashig_scenario).

-include("openapi.hrl").

-export([openapi_xml_cdashig_scenario/0]).

-export([openapi_xml_cdashig_scenario/1]).

-export_type([openapi_xml_cdashig_scenario/0]).

-type openapi_xml_cdashig_scenario() ::
  [ {'self', openapi_cdashig_scenario:openapi_cdashig_scenario() }
  ].


openapi_xml_cdashig_scenario() ->
    openapi_xml_cdashig_scenario([]).

openapi_xml_cdashig_scenario(Fields) ->
  Default = [ {'self', openapi_cdashig_scenario:openapi_cdashig_scenario() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

