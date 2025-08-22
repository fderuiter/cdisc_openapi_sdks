-module(openapi_qrs_item).

-include("openapi.hrl").

-export([openapi_qrs_item/0]).

-export([openapi_qrs_item/1]).

-export_type([openapi_qrs_item/0]).

-type openapi_qrs_item() ::
  [ {'ordinal', binary() }
  | {'label', binary() }
  | {'questionText', binary() }
  | {'_links', openapi_qrs_item_links:openapi_qrs_item_links() }
  ].


openapi_qrs_item() ->
    openapi_qrs_item([]).

openapi_qrs_item(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'label', binary() }
            , {'questionText', binary() }
            , {'_links', openapi_qrs_item_links:openapi_qrs_item_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

