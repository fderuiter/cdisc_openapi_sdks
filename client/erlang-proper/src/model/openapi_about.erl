-module(openapi_about).

-include("openapi.hrl").

-export([openapi_about/0]).

-export([openapi_about/1]).

-export_type([openapi_about/0]).

-type openapi_about() ::
  [ {'_links', openapi_about_links:openapi_about_links() }
  | {'release_notes', binary() }
  | {'api_documentation', binary() }
  ].


openapi_about() ->
    openapi_about([]).

openapi_about(Fields) ->
  Default = [ {'_links', openapi_about_links:openapi_about_links() }
            , {'release-notes', binary() }
            , {'api-documentation', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

