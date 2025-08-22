-module(openapi_ct_codelist_links).

-include("openapi.hrl").

-export([openapi_ct_codelist_links/0]).

-export([openapi_ct_codelist_links/1]).

-export_type([openapi_ct_codelist_links/0]).

-type openapi_ct_codelist_links() ::
  [ {'self', openapi_ct_codelist_ref:openapi_ct_codelist_ref() }
  | {'parentPackage', openapi_ct_package_ref:openapi_ct_package_ref() }
  | {'rootItem', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
  | {'priorVersion', openapi_ct_codelist_ref:openapi_ct_codelist_ref() }
  ].


openapi_ct_codelist_links() ->
    openapi_ct_codelist_links([]).

openapi_ct_codelist_links(Fields) ->
  Default = [ {'self', openapi_ct_codelist_ref:openapi_ct_codelist_ref() }
            , {'parentPackage', openapi_ct_package_ref:openapi_ct_package_ref() }
            , {'rootItem', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
            , {'priorVersion', openapi_ct_codelist_ref:openapi_ct_codelist_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

