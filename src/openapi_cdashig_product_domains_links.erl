-module(openapi_cdashig_product_domains_links).

-export([encode/1]).

-export_type([openapi_cdashig_product_domains_links/0]).

-type openapi_cdashig_product_domains_links() ::
    #{ 'self' => openapi_cdashig_product_domains_ref:openapi_cdashig_product_domains_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'domains' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'domains' := Domains
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'domains' => Domains
     }.
