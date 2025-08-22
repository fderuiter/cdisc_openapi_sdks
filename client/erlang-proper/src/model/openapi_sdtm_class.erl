-module(openapi_sdtm_class).

-include("openapi.hrl").

-export([openapi_sdtm_class/0]).

-export([openapi_sdtm_class/1]).

-export_type([openapi_sdtm_class/0]).

-type openapi_sdtm_class() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_sdtm_class_links:openapi_sdtm_class_links() }
  | {'classVariables', list(openapi_sdtm_class_variable:openapi_sdtm_class_variable()) }
  | {'datasets', list(openapi_sdtm_dataset:openapi_sdtm_dataset()) }
  ].


openapi_sdtm_class() ->
    openapi_sdtm_class([]).

openapi_sdtm_class(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_sdtm_class_links:openapi_sdtm_class_links() }
            , {'classVariables', list(openapi_sdtm_class_variable:openapi_sdtm_class_variable()) }
            , {'datasets', list(openapi_sdtm_dataset:openapi_sdtm_dataset()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

