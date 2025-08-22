-module(openapi_root_ct_term_links).

-export([encode/1]).

-export_type([openapi_root_ct_term_links/0]).

-type openapi_root_ct_term_links() ::
    #{ 'self' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'versions' => list()
     }.

encode(#{ 'self' := Self,
          'versions' := Versions
        }) ->
    #{ 'self' => Self,
       'versions' => Versions
     }.
