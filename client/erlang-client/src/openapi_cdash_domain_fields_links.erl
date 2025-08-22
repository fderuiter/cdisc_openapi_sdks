-module(openapi_cdash_domain_fields_links).

-export([encode/1]).

-export_type([openapi_cdash_domain_fields_links/0]).

-type openapi_cdash_domain_fields_links() ::
    #{ 'self' => openapi_cdash_domain_fields_ref:openapi_cdash_domain_fields_ref(),
       'parentProduct' => openapi_cdash_product_ref:openapi_cdash_product_ref(),
       'parentClass' => openapi_cdash_class_ref:openapi_cdash_class_ref(),
       'fields' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'parentClass' := ParentClass,
          'fields' := Fields
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'parentClass' => ParentClass,
       'fields' => Fields
     }.
