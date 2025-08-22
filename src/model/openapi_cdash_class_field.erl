-module(openapi_cdash_class_field).

-include("openapi.hrl").

-export([openapi_cdash_class_field/0]).

-export([openapi_cdash_class_field/1]).

-export_type([openapi_cdash_class_field/0]).

-type openapi_cdash_class_field() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'definition', binary() }
  | {'questionText', binary() }
  | {'prompt', binary() }
  | {'simpleDatatype', binary() }
  | {'implementationNotes', binary() }
  | {'mappingInstructions', binary() }
  | {'_links', openapi_cdash_class_field_links:openapi_cdash_class_field_links() }
  ].


openapi_cdash_class_field() ->
    openapi_cdash_class_field([]).

openapi_cdash_class_field(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'definition', binary() }
            , {'questionText', binary() }
            , {'prompt', binary() }
            , {'simpleDatatype', binary() }
            , {'implementationNotes', binary() }
            , {'mappingInstructions', binary() }
            , {'_links', openapi_cdash_class_field_links:openapi_cdash_class_field_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

