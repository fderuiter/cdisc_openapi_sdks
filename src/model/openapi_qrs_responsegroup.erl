-module(openapi_qrs_responsegroup).

-include("openapi.hrl").

-export([openapi_qrs_responsegroup/0]).

-export([openapi_qrs_responsegroup/1]).

-export_type([openapi_qrs_responsegroup/0]).

-type openapi_qrs_responsegroup() ::
  [ {'label', binary() }
  | {'_links', openapi_qrs_responsegroup_links:openapi_qrs_responsegroup_links() }
  ].


openapi_qrs_responsegroup() ->
    openapi_qrs_responsegroup([]).

openapi_qrs_responsegroup(Fields) ->
  Default = [ {'label', binary() }
            , {'_links', openapi_qrs_responsegroup_links:openapi_qrs_responsegroup_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

