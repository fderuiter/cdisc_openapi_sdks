-module(openapi_sendig_classes_ref).

-include("openapi.hrl").

-export([openapi_sendig_classes_ref/0]).

-export([openapi_sendig_classes_ref/1]).

-export_type([openapi_sendig_classes_ref/0]).

-type openapi_sendig_classes_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sendig_classes_ref() ->
    openapi_sendig_classes_ref([]).

openapi_sendig_classes_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

