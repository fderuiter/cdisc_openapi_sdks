-module(openapi_ct_packages).

-include("openapi.hrl").

-export([openapi_ct_packages/0]).

-export([openapi_ct_packages/1]).

-export_type([openapi_ct_packages/0]).

-type openapi_ct_packages() ::
  [ {'_links', openapi_ct_packages_links:openapi_ct_packages_links() }
  ].


openapi_ct_packages() ->
    openapi_ct_packages([]).

openapi_ct_packages(Fields) ->
  Default = [ {'_links', openapi_ct_packages_links:openapi_ct_packages_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

