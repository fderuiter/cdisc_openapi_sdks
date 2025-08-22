-module(openapi_ct_packages_links).

-include("openapi.hrl").

-export([openapi_ct_packages_links/0]).

-export([openapi_ct_packages_links/1]).

-export_type([openapi_ct_packages_links/0]).

-type openapi_ct_packages_links() ::
  [ {'self', openapi_ct_packages_ref:openapi_ct_packages_ref() }
  | {'packages', list(openapi_ct_package_ref_element:openapi_ct_package_ref_element()) }
  ].


openapi_ct_packages_links() ->
    openapi_ct_packages_links([]).

openapi_ct_packages_links(Fields) ->
  Default = [ {'self', openapi_ct_packages_ref:openapi_ct_packages_ref() }
            , {'packages', list(openapi_ct_package_ref_element:openapi_ct_package_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

