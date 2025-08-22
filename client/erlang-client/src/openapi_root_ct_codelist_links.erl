-module(openapi_root_ct_codelist_links).

-export([encode/1]).

-export_type([openapi_root_ct_codelist_links/0]).

-type openapi_root_ct_codelist_links() ::
    #{ 'self' => openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref(),
       'versions' => list()
     }.

encode(#{ 'self' := Self,
          'versions' := Versions
        }) ->
    #{ 'self' => Self,
       'versions' => Versions
     }.
