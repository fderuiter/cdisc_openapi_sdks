-module(openapi_ct_package_codelists_links).

-include("openapi.hrl").

-export([openapi_ct_package_codelists_links/0]).

-export([openapi_ct_package_codelists_links/1]).

-export_type([openapi_ct_package_codelists_links/0]).

-type openapi_ct_package_codelists_links() ::
  [ {'self', openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref() }
  | {'priorVersion', openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref() }
  | {'codelists', list(openapi_ct_codelist_ref_element:openapi_ct_codelist_ref_element()) }
  ].


openapi_ct_package_codelists_links() ->
    openapi_ct_package_codelists_links([]).

openapi_ct_package_codelists_links(Fields) ->
  Default = [ {'self', openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref() }
            , {'priorVersion', openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref() }
            , {'codelists', list(openapi_ct_codelist_ref_element:openapi_ct_codelist_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

