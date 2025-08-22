-module(openapi_qrs_responsegroups).

-include("openapi.hrl").

-export([openapi_qrs_responsegroups/0]).

-export([openapi_qrs_responsegroups/1]).

-export_type([openapi_qrs_responsegroups/0]).

-type openapi_qrs_responsegroups() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'effectiveDate', binary() }
  | {'untilDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'qrsType', binary() }
  | {'_links', openapi_qrs_responsegroups_links:openapi_qrs_responsegroups_links() }
  ].


openapi_qrs_responsegroups() ->
    openapi_qrs_responsegroups([]).

openapi_qrs_responsegroups(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'effectiveDate', binary() }
            , {'untilDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'qrsType', binary() }
            , {'_links', openapi_qrs_responsegroups_links:openapi_qrs_responsegroups_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

