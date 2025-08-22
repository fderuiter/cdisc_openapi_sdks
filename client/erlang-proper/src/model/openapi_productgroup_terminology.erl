-module(openapi_productgroup_terminology).

-include("openapi.hrl").

-export([openapi_productgroup_terminology/0]).

-export([openapi_productgroup_terminology/1]).

-export_type([openapi_productgroup_terminology/0]).

-type openapi_productgroup_terminology() ::
  [ {'_links', openapi_productgroup_terminology_links:openapi_productgroup_terminology_links() }
  ].


openapi_productgroup_terminology() ->
    openapi_productgroup_terminology([]).

openapi_productgroup_terminology(Fields) ->
  Default = [ {'_links', openapi_productgroup_terminology_links:openapi_productgroup_terminology_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

