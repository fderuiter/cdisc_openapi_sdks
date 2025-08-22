-module(openapi_qrs_item_links).

-export([encode/1]).

-export_type([openapi_qrs_item_links/0]).

-type openapi_qrs_item_links() ::
    #{ 'qrsItemTEST' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsItemTESTCD' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsItemEVAL' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsItemSCAT' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'responsegroup' => openapi_qrs_responsegroup:openapi_qrs_responsegroup()
     }.

encode(#{ 'qrsItemTEST' := QrsItemTEST,
          'qrsItemTESTCD' := QrsItemTESTCD,
          'qrsItemEVAL' := QrsItemEVAL,
          'qrsItemSCAT' := QrsItemSCAT,
          'responsegroup' := Responsegroup
        }) ->
    #{ 'qrsItemTEST' => QrsItemTEST,
       'qrsItemTESTCD' => QrsItemTESTCD,
       'qrsItemEVAL' => QrsItemEVAL,
       'qrsItemSCAT' => QrsItemSCAT,
       'responsegroup' => Responsegroup
     }.
