-module(openapi_root_ct_codelist).

-export([encode/1]).

-export_type([openapi_root_ct_codelist/0]).

-type openapi_root_ct_codelist() ::
    #{ '_links' => openapi_root_ct_codelist_links:openapi_root_ct_codelist_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
