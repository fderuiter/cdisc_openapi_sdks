-module(openapi_export_ct_table).

-include("openapi.hrl").

-export([openapi_export_ct_table/0]).

-export([openapi_export_ct_table/1]).

-export_type([openapi_export_ct_table/0]).

-type openapi_export_ct_table() ::
  [ {'ct', list(openapi_export_ct_codelist:openapi_export_ct_codelist()) }
  ].


openapi_export_ct_table() ->
    openapi_export_ct_table([]).

openapi_export_ct_table(Fields) ->
  Default = [ {'ct', list(openapi_export_ct_codelist:openapi_export_ct_codelist()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

