-module(openapi_ct_package_links).

-export([encode/1]).

-export_type([openapi_ct_package_links/0]).

-type openapi_ct_package_links() ::
    #{ 'self' => openapi_ct_package_ref:openapi_ct_package_ref(),
       'priorVersion' => openapi_ct_package_ref:openapi_ct_package_ref()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion
     }.
