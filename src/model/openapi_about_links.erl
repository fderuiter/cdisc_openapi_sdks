-module(openapi_about_links).

-include("openapi.hrl").

-export([openapi_about_links/0]).

-export([openapi_about_links/1]).

-export_type([openapi_about_links/0]).

-type openapi_about_links() ::
  [ {'self', openapi_about_ref:openapi_about_ref() }
  | {'lastupdated', openapi_lastupdated_ref:openapi_lastupdated_ref() }
  ].


openapi_about_links() ->
    openapi_about_links([]).

openapi_about_links(Fields) ->
  Default = [ {'self', openapi_about_ref:openapi_about_ref() }
            , {'lastupdated', openapi_lastupdated_ref:openapi_lastupdated_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

