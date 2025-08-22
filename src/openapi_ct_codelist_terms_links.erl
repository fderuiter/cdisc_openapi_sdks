-module(openapi_ct_codelist_terms_links).

-export([encode/1]).

-export_type([openapi_ct_codelist_terms_links/0]).

-type openapi_ct_codelist_terms_links() ::
    #{ 'self' => openapi_ct_codelist_terms_ref:openapi_ct_codelist_terms_ref(),
       'parentPackage' => openapi_ct_package_ref:openapi_ct_package_ref(),
       'rootItem' => openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref(),
       'priorVersion' => openapi_ct_codelist_terms_ref:openapi_ct_codelist_terms_ref(),
       'terms' => list()
     }.

encode(#{ 'self' := Self,
          'parentPackage' := ParentPackage,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion,
          'terms' := Terms
        }) ->
    #{ 'self' => Self,
       'parentPackage' => ParentPackage,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion,
       'terms' => Terms
     }.
