-module(openapi_sdtm_datasets).

-include("openapi.hrl").

-export([openapi_sdtm_datasets/0]).

-export([openapi_sdtm_datasets/1]).

-export_type([openapi_sdtm_datasets/0]).

-type openapi_sdtm_datasets() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sdtm_datasets_links:openapi_sdtm_datasets_links() }
  ].


openapi_sdtm_datasets() ->
    openapi_sdtm_datasets([]).

openapi_sdtm_datasets(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sdtm_datasets_links:openapi_sdtm_datasets_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

