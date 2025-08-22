-module(openapi_sdtmig_dataset_variable_ref_target).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_variable_ref_target/0]).

-export([openapi_sdtmig_dataset_variable_ref_target/1]).

-export_type([openapi_sdtmig_dataset_variable_ref_target/0]).

-type openapi_sdtmig_dataset_variable_ref_target() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtmig_dataset_variable_ref_target() ->
    openapi_sdtmig_dataset_variable_ref_target([]).

openapi_sdtmig_dataset_variable_ref_target(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

