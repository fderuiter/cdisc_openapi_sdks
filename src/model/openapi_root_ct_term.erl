-module(openapi_root_ct_term).

-include("openapi.hrl").

-export([openapi_root_ct_term/0]).

-export([openapi_root_ct_term/1]).

-export_type([openapi_root_ct_term/0]).

-type openapi_root_ct_term() ::
  [ {'_links', openapi_root_ct_term_links:openapi_root_ct_term_links() }
  ].


openapi_root_ct_term() ->
    openapi_root_ct_term([]).

openapi_root_ct_term(Fields) ->
  Default = [ {'_links', openapi_root_ct_term_links:openapi_root_ct_term_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

