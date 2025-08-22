-module(openapi_cdashig_scenario_field).

-include("openapi.hrl").

-export([openapi_cdashig_scenario_field/0]).

-export([openapi_cdashig_scenario_field/1]).

-export_type([openapi_cdashig_scenario_field/0]).

-type openapi_cdashig_scenario_field() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'definition', binary() }
  | {'questionText', binary() }
  | {'prompt', binary() }
  | {'completionInstructions', binary() }
  | {'implementationNotes', binary() }
  | {'simpleDatatype', binary() }
  | {'mappingInstructions', binary() }
  | {'core', binary() }
  | {'_links', openapi_cdashig_scenario_field_links:openapi_cdashig_scenario_field_links() }
  ].


openapi_cdashig_scenario_field() ->
    openapi_cdashig_scenario_field([]).

openapi_cdashig_scenario_field(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'definition', binary() }
            , {'questionText', binary() }
            , {'prompt', binary() }
            , {'completionInstructions', binary() }
            , {'implementationNotes', binary() }
            , {'simpleDatatype', binary() }
            , {'mappingInstructions', binary() }
            , {'core', binary() }
            , {'_links', openapi_cdashig_scenario_field_links:openapi_cdashig_scenario_field_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

