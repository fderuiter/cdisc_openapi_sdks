-module(openapi_qrs_response_links).

-export([encode/1]).

-export_type([openapi_qrs_response_links/0]).

-type openapi_qrs_response_links() ::
    #{ 'qrsResponseORRES' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsResponseORRESU' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsResponseSTRESC' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsResponseSTRESCU' => openapi_root_ct_term_ref:openapi_root_ct_term_ref()
     }.

encode(#{ 'qrsResponseORRES' := QrsResponseORRES,
          'qrsResponseORRESU' := QrsResponseORRESU,
          'qrsResponseSTRESC' := QrsResponseSTRESC,
          'qrsResponseSTRESCU' := QrsResponseSTRESCU
        }) ->
    #{ 'qrsResponseORRES' => QrsResponseORRES,
       'qrsResponseORRESU' => QrsResponseORRESU,
       'qrsResponseSTRESC' => QrsResponseSTRESC,
       'qrsResponseSTRESCU' => QrsResponseSTRESCU
     }.
