-module(openapi_cdashig_product_scenarios_links).

-export([encode/1]).

-export_type([openapi_cdashig_product_scenarios_links/0]).

-type openapi_cdashig_product_scenarios_links() ::
    #{ 'self' => openapi_cdashig_product_scenarios_ref:openapi_cdashig_product_scenarios_ref(),
       'parentProduct' => openapi_cdashig_product_ref:openapi_cdashig_product_ref(),
       'scenarios' => list()
     }.

encode(#{ 'self' := Self,
          'parentProduct' := ParentProduct,
          'scenarios' := Scenarios
        }) ->
    #{ 'self' => Self,
       'parentProduct' => ParentProduct,
       'scenarios' => Scenarios
     }.
