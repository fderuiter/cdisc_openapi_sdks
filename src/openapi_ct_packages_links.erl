-module(openapi_ct_packages_links).

-export([encode/1]).

-export_type([openapi_ct_packages_links/0]).

-type openapi_ct_packages_links() ::
    #{ 'self' => openapi_ct_packages_ref:openapi_ct_packages_ref(),
       'packages' => list()
     }.

encode(#{ 'self' := Self,
          'packages' := Packages
        }) ->
    #{ 'self' => Self,
       'packages' => Packages
     }.
