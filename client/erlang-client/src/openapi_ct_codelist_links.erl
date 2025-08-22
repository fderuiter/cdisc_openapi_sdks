-module(openapi_ct_codelist_links).

-export([encode/1]).

-export_type([openapi_ct_codelist_links/0]).

-type openapi_ct_codelist_links() ::
    #{ 'self' => openapi_ct_codelist_ref:openapi_ct_codelist_ref(),
       'parentPackage' => openapi_ct_package_ref:openapi_ct_package_ref(),
       'rootItem' => openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref(),
       'priorVersion' => openapi_ct_codelist_ref:openapi_ct_codelist_ref()
     }.

encode(#{ 'self' := Self,
          'parentPackage' := ParentPackage,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentPackage' => ParentPackage,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion
     }.
