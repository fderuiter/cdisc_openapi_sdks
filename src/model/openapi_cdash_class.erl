-module(openapi_cdash_class).

-include("openapi.hrl").

-export([openapi_cdash_class/0]).

-export([openapi_cdash_class/1]).

-export_type([openapi_cdash_class/0]).

-type openapi_cdash_class() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_cdash_class_links:openapi_cdash_class_links() }
  | {'cdashModelFields', list(openapi_cdash_class_field:openapi_cdash_class_field()) }
  ].


openapi_cdash_class() ->
    openapi_cdash_class([]).

openapi_cdash_class(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_cdash_class_links:openapi_cdash_class_links() }
            , {'cdashModelFields', list(openapi_cdash_class_field:openapi_cdash_class_field()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

