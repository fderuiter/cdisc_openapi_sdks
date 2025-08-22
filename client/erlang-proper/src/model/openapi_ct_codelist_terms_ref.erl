-module(openapi_ct_codelist_terms_ref).

-include("openapi.hrl").

-export([openapi_ct_codelist_terms_ref/0]).

-export([openapi_ct_codelist_terms_ref/1]).

-export_type([openapi_ct_codelist_terms_ref/0]).

-type openapi_ct_codelist_terms_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_ct_codelist_terms_ref() ->
    openapi_ct_codelist_terms_ref([]).

openapi_ct_codelist_terms_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

