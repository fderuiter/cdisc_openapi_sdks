-module(openapi_export_ct_term).

-include("openapi.hrl").

-export([openapi_export_ct_term/0]).

-export([openapi_export_ct_term/1]).

-export_type([openapi_export_ct_term/0]).

-type openapi_export_ct_term() ::
  [ {'bundle_1', binary() }
  | {'CDISC_Synonym_s', list(binary()) }
  | {'bundle_2', binary() }
  ].


openapi_export_ct_term() ->
    openapi_export_ct_term([]).

openapi_export_ct_term(Fields) ->
  Default = [ {'bundle-1', binary() }
            , {'CDISC Synonym(s)', list(binary()) }
            , {'bundle-2', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

