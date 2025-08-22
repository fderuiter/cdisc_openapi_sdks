-module(openapi_cdashig_product_domains_links).

-include("openapi.hrl").

-export([openapi_cdashig_product_domains_links/0]).

-export([openapi_cdashig_product_domains_links/1]).

-export_type([openapi_cdashig_product_domains_links/0]).

-type openapi_cdashig_product_domains_links() ::
  [ {'self', openapi_cdashig_product_domains_ref:openapi_cdashig_product_domains_ref() }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'domains', list(openapi_cdashig_domain_ref_element:openapi_cdashig_domain_ref_element()) }
  ].


openapi_cdashig_product_domains_links() ->
    openapi_cdashig_product_domains_links([]).

openapi_cdashig_product_domains_links(Fields) ->
  Default = [ {'self', openapi_cdashig_product_domains_ref:openapi_cdashig_product_domains_ref() }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'domains', list(openapi_cdashig_domain_ref_element:openapi_cdashig_domain_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

