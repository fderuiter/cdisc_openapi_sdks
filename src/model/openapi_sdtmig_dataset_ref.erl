-module(openapi_sdtmig_dataset_ref).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_ref/0]).

-export([openapi_sdtmig_dataset_ref/1]).

-export_type([openapi_sdtmig_dataset_ref/0]).

-type openapi_sdtmig_dataset_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtmig_dataset_ref() ->
    openapi_sdtmig_dataset_ref([]).

openapi_sdtmig_dataset_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

