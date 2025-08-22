-module(openapi_qrs_item_links).

-include("openapi.hrl").

-export([openapi_qrs_item_links/0]).

-export([openapi_qrs_item_links/1]).

-export_type([openapi_qrs_item_links/0]).

-type openapi_qrs_item_links() ::
  [ {'qrsItemTEST', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsItemTESTCD', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsItemEVAL', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsItemSCAT', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'responsegroup', openapi_qrs_responsegroup:openapi_qrs_responsegroup() }
  ].


openapi_qrs_item_links() ->
    openapi_qrs_item_links([]).

openapi_qrs_item_links(Fields) ->
  Default = [ {'qrsItemTEST', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsItemTESTCD', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsItemEVAL', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsItemSCAT', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'responsegroup', openapi_qrs_responsegroup:openapi_qrs_responsegroup() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

