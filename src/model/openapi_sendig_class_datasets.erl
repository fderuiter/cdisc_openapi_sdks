-module(openapi_sendig_class_datasets).

-include("openapi.hrl").

-export([openapi_sendig_class_datasets/0]).

-export([openapi_sendig_class_datasets/1]).

-export_type([openapi_sendig_class_datasets/0]).

-type openapi_sendig_class_datasets() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_sendig_class_datasets_links:openapi_sendig_class_datasets_links() }
  ].


openapi_sendig_class_datasets() ->
    openapi_sendig_class_datasets([]).

openapi_sendig_class_datasets(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_sendig_class_datasets_links:openapi_sendig_class_datasets_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

