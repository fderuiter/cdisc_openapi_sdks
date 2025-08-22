-module(openapi_root_ct_codelist_links).

-include("openapi.hrl").

-export([openapi_root_ct_codelist_links/0]).

-export([openapi_root_ct_codelist_links/1]).

-export_type([openapi_root_ct_codelist_links/0]).

-type openapi_root_ct_codelist_links() ::
  [ {'self', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
  | {'versions', list(openapi_ct_codelist_ref_version:openapi_ct_codelist_ref_version()) }
  ].


openapi_root_ct_codelist_links() ->
    openapi_root_ct_codelist_links([]).

openapi_root_ct_codelist_links(Fields) ->
  Default = [ {'self', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
            , {'versions', list(openapi_ct_codelist_ref_version:openapi_ct_codelist_ref_version()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

