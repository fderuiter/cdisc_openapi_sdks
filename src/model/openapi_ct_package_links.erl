-module(openapi_ct_package_links).

-include("openapi.hrl").

-export([openapi_ct_package_links/0]).

-export([openapi_ct_package_links/1]).

-export_type([openapi_ct_package_links/0]).

-type openapi_ct_package_links() ::
  [ {'self', openapi_ct_package_ref:openapi_ct_package_ref() }
  | {'priorVersion', openapi_ct_package_ref:openapi_ct_package_ref() }
  ].


openapi_ct_package_links() ->
    openapi_ct_package_links([]).

openapi_ct_package_links(Fields) ->
  Default = [ {'self', openapi_ct_package_ref:openapi_ct_package_ref() }
            , {'priorVersion', openapi_ct_package_ref:openapi_ct_package_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

