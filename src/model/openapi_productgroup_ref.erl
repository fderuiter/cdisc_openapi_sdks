-module(openapi_productgroup_ref).

-include("openapi.hrl").

-export([openapi_productgroup_ref/0]).

-export([openapi_productgroup_ref/1]).

-export_type([openapi_productgroup_ref/0]).

-type openapi_productgroup_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_productgroup_ref() ->
    openapi_productgroup_ref([]).

openapi_productgroup_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

