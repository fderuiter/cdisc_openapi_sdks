-module(openapi_root_ct_term_ref).

-include("openapi.hrl").

-export([openapi_root_ct_term_ref/0]).

-export([openapi_root_ct_term_ref/1]).

-export_type([openapi_root_ct_term_ref/0]).

-type openapi_root_ct_term_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_root_ct_term_ref() ->
    openapi_root_ct_term_ref([]).

openapi_root_ct_term_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

