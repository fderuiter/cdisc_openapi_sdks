-module(openapi_sdtm_class_datasets).

-include("openapi.hrl").

-export([openapi_sdtm_class_datasets/0]).

-export([openapi_sdtm_class_datasets/1]).

-export_type([openapi_sdtm_class_datasets/0]).

-type openapi_sdtm_class_datasets() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_sdtm_class_datasets_links:openapi_sdtm_class_datasets_links() }
  ].


openapi_sdtm_class_datasets() ->
    openapi_sdtm_class_datasets([]).

openapi_sdtm_class_datasets(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_sdtm_class_datasets_links:openapi_sdtm_class_datasets_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

