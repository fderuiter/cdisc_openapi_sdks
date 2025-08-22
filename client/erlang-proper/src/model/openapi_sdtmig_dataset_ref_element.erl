-module(openapi_sdtmig_dataset_ref_element).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_ref_element/0]).

-export([openapi_sdtmig_dataset_ref_element/1]).

-export_type([openapi_sdtmig_dataset_ref_element/0]).

-type openapi_sdtmig_dataset_ref_element() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtmig_dataset_ref_element() ->
    openapi_sdtmig_dataset_ref_element([]).

openapi_sdtmig_dataset_ref_element(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

