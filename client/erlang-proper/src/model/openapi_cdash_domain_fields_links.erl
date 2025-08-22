-module(openapi_cdash_domain_fields_links).

-include("openapi.hrl").

-export([openapi_cdash_domain_fields_links/0]).

-export([openapi_cdash_domain_fields_links/1]).

-export_type([openapi_cdash_domain_fields_links/0]).

-type openapi_cdash_domain_fields_links() ::
  [ {'self', openapi_cdash_domain_fields_ref:openapi_cdash_domain_fields_ref() }
  | {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  | {'fields', list(openapi_cdash_domain_field_ref_element:openapi_cdash_domain_field_ref_element()) }
  ].


openapi_cdash_domain_fields_links() ->
    openapi_cdash_domain_fields_links([]).

openapi_cdash_domain_fields_links(Fields) ->
  Default = [ {'self', openapi_cdash_domain_fields_ref:openapi_cdash_domain_fields_ref() }
            , {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            , {'fields', list(openapi_cdash_domain_field_ref_element:openapi_cdash_domain_field_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

