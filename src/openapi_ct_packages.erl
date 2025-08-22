-module(openapi_ct_packages).

-export([encode/1]).

-export_type([openapi_ct_packages/0]).

-type openapi_ct_packages() ::
    #{ '_links' => openapi_ct_packages_links:openapi_ct_packages_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
