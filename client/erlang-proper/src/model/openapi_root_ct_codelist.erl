-module(openapi_root_ct_codelist).

-include("openapi.hrl").

-export([openapi_root_ct_codelist/0]).

-export([openapi_root_ct_codelist/1]).

-export_type([openapi_root_ct_codelist/0]).

-type openapi_root_ct_codelist() ::
  [ {'_links', openapi_root_ct_codelist_links:openapi_root_ct_codelist_links() }
  ].


openapi_root_ct_codelist() ->
    openapi_root_ct_codelist([]).

openapi_root_ct_codelist(Fields) ->
  Default = [ {'_links', openapi_root_ct_codelist_links:openapi_root_ct_codelist_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

