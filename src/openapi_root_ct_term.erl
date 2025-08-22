-module(openapi_root_ct_term).

-export([encode/1]).

-export_type([openapi_root_ct_term/0]).

-type openapi_root_ct_term() ::
    #{ '_links' => openapi_root_ct_term_links:openapi_root_ct_term_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
