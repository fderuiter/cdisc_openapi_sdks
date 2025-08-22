-module(openapi_xml_cdashig_product_scenarios).

-export([encode/1]).

-export_type([openapi_xml_cdashig_product_scenarios/0]).

-type openapi_xml_cdashig_product_scenarios() ::
    #{ 'self' => openapi_cdashig_product_scenarios:openapi_cdashig_product_scenarios()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
