-module(openapi_sdtmig_class).

-include("openapi.hrl").

-export([openapi_sdtmig_class/0]).

-export([openapi_sdtmig_class/1]).

-export_type([openapi_sdtmig_class/0]).

-type openapi_sdtmig_class() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_sdtmig_class_links:openapi_sdtmig_class_links() }
  | {'datasets', list(openapi_sdtmig_dataset:openapi_sdtmig_dataset()) }
  ].


openapi_sdtmig_class() ->
    openapi_sdtmig_class([]).

openapi_sdtmig_class(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_sdtmig_class_links:openapi_sdtmig_class_links() }
            , {'datasets', list(openapi_sdtmig_dataset:openapi_sdtmig_dataset()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

