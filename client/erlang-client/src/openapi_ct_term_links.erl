-module(openapi_ct_term_links).

-export([encode/1]).

-export_type([openapi_ct_term_links/0]).

-type openapi_ct_term_links() ::
    #{ 'self' => openapi_ct_term_ref:openapi_ct_term_ref(),
       'parentPackage' => openapi_ct_package_ref:openapi_ct_package_ref(),
       'parentCodelist' => openapi_ct_codelist_ref:openapi_ct_codelist_ref(),
       'rootItem' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'priorVersion' => openapi_ct_term_ref:openapi_ct_term_ref()
     }.

encode(#{ 'self' := Self,
          'parentPackage' := ParentPackage,
          'parentCodelist' := ParentCodelist,
          'rootItem' := RootItem,
          'priorVersion' := PriorVersion
        }) ->
    #{ 'self' => Self,
       'parentPackage' => ParentPackage,
       'parentCodelist' => ParentCodelist,
       'rootItem' => RootItem,
       'priorVersion' => PriorVersion
     }.
