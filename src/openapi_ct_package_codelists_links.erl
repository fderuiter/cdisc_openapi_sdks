-module(openapi_ct_package_codelists_links).

-export([encode/1]).

-export_type([openapi_ct_package_codelists_links/0]).

-type openapi_ct_package_codelists_links() ::
    #{ 'self' => openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref(),
       'priorVersion' => openapi_ct_package_codelists_ref:openapi_ct_package_codelists_ref(),
       'codelists' => list()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion,
          'codelists' := Codelists
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion,
       'codelists' => Codelists
     }.
