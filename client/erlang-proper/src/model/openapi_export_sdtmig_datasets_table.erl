-module(openapi_export_sdtmig_datasets_table).

-include("openapi.hrl").

-export([openapi_export_sdtmig_datasets_table/0]).

-export([openapi_export_sdtmig_datasets_table/1]).

-export_type([openapi_export_sdtmig_datasets_table/0]).

-type openapi_export_sdtmig_datasets_table() ::
  [ {'datasets', list(openapi_export_sdtmig_datasets_row:openapi_export_sdtmig_datasets_row()) }
  ].


openapi_export_sdtmig_datasets_table() ->
    openapi_export_sdtmig_datasets_table([]).

openapi_export_sdtmig_datasets_table(Fields) ->
  Default = [ {'datasets', list(openapi_export_sdtmig_datasets_row:openapi_export_sdtmig_datasets_row()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

