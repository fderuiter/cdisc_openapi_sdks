-module(openapi_sendig_class).

-include("openapi.hrl").

-export([openapi_sendig_class/0]).

-export([openapi_sendig_class/1]).

-export_type([openapi_sendig_class/0]).

-type openapi_sendig_class() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_sendig_class_links:openapi_sendig_class_links() }
  | {'datasets', list(openapi_sendig_dataset:openapi_sendig_dataset()) }
  ].


openapi_sendig_class() ->
    openapi_sendig_class([]).

openapi_sendig_class(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_sendig_class_links:openapi_sendig_class_links() }
            , {'datasets', list(openapi_sendig_dataset:openapi_sendig_dataset()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

