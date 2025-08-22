-module(openapi_qrs_items).

-include("openapi.hrl").

-export([openapi_qrs_items/0]).

-export([openapi_qrs_items/1]).

-export_type([openapi_qrs_items/0]).

-type openapi_qrs_items() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'effectiveDate', binary() }
  | {'untilDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'qrsType', binary() }
  | {'_links', openapi_qrs_items_links:openapi_qrs_items_links() }
  ].


openapi_qrs_items() ->
    openapi_qrs_items([]).

openapi_qrs_items(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'effectiveDate', binary() }
            , {'untilDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'qrsType', binary() }
            , {'_links', openapi_qrs_items_links:openapi_qrs_items_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

