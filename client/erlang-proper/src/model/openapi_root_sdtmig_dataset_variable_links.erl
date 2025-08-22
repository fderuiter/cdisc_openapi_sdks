-module(openapi_root_sdtmig_dataset_variable_links).

-include("openapi.hrl").

-export([openapi_root_sdtmig_dataset_variable_links/0]).

-export([openapi_root_sdtmig_dataset_variable_links/1]).

-export_type([openapi_root_sdtmig_dataset_variable_links/0]).

-type openapi_root_sdtmig_dataset_variable_links() ::
  [ {'self', openapi_root_sdtmig_dataset_variable_ref:openapi_root_sdtmig_dataset_variable_ref() }
  | {'versions', list(openapi_sdtmig_dataset_variable_ref_version:openapi_sdtmig_dataset_variable_ref_version()) }
  ].


openapi_root_sdtmig_dataset_variable_links() ->
    openapi_root_sdtmig_dataset_variable_links([]).

openapi_root_sdtmig_dataset_variable_links(Fields) ->
  Default = [ {'self', openapi_root_sdtmig_dataset_variable_ref:openapi_root_sdtmig_dataset_variable_ref() }
            , {'versions', list(openapi_sdtmig_dataset_variable_ref_version:openapi_sdtmig_dataset_variable_ref_version()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

