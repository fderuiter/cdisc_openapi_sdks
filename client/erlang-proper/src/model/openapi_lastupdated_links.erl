-module(openapi_lastupdated_links).

-include("openapi.hrl").

-export([openapi_lastupdated_links/0]).

-export([openapi_lastupdated_links/1]).

-export_type([openapi_lastupdated_links/0]).

-type openapi_lastupdated_links() ::
  [ {'self', openapi_lastupdated_ref:openapi_lastupdated_ref() }
  ].


openapi_lastupdated_links() ->
    openapi_lastupdated_links([]).

openapi_lastupdated_links(Fields) ->
  Default = [ {'self', openapi_lastupdated_ref:openapi_lastupdated_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

