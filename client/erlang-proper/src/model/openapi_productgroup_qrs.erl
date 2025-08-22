-module(openapi_productgroup_qrs).

-include("openapi.hrl").

-export([openapi_productgroup_qrs/0]).

-export([openapi_productgroup_qrs/1]).

-export_type([openapi_productgroup_qrs/0]).

-type openapi_productgroup_qrs() ::
  [ {'_links', openapi_productgroup_qrs_links:openapi_productgroup_qrs_links() }
  ].


openapi_productgroup_qrs() ->
    openapi_productgroup_qrs([]).

openapi_productgroup_qrs(Fields) ->
  Default = [ {'_links', openapi_productgroup_qrs_links:openapi_productgroup_qrs_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

