-module(openapi_qrs_response_links).

-include("openapi.hrl").

-export([openapi_qrs_response_links/0]).

-export([openapi_qrs_response_links/1]).

-export_type([openapi_qrs_response_links/0]).

-type openapi_qrs_response_links() ::
  [ {'qrsResponseORRES', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsResponseORRESU', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsResponseSTRESC', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsResponseSTRESCU', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  ].


openapi_qrs_response_links() ->
    openapi_qrs_response_links([]).

openapi_qrs_response_links(Fields) ->
  Default = [ {'qrsResponseORRES', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsResponseORRESU', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsResponseSTRESC', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsResponseSTRESCU', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

