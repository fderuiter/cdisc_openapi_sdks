-module(openapi_cdash_domain_field_links).

-include("openapi.hrl").

-export([openapi_cdash_domain_field_links/0]).

-export([openapi_cdash_domain_field_links/1]).

-export_type([openapi_cdash_domain_field_links/0]).

-type openapi_cdash_domain_field_links() ::
  [ {'self', openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref() }
  | {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
  | {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  | {'parentDomain', openapi_cdash_domain_ref:openapi_cdash_domain_ref() }
  | {'rootItem', openapi_root_cdash_domain_field_ref:openapi_root_cdash_domain_field_ref() }
  | {'priorVersion', openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref() }
  | {'sdtmDatasetMappingTargets', list(openapi_sdtm_dataset_variable_ref_target:openapi_sdtm_dataset_variable_ref_target()) }
  | {'sdtmigDatasetMappingTargets', list(openapi_sdtmig_dataset_variable_ref_target:openapi_sdtmig_dataset_variable_ref_target()) }
  ].


openapi_cdash_domain_field_links() ->
    openapi_cdash_domain_field_links([]).

openapi_cdash_domain_field_links(Fields) ->
  Default = [ {'self', openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref() }
            , {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
            , {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            , {'parentDomain', openapi_cdash_domain_ref:openapi_cdash_domain_ref() }
            , {'rootItem', openapi_root_cdash_domain_field_ref:openapi_root_cdash_domain_field_ref() }
            , {'priorVersion', openapi_cdash_domain_field_ref:openapi_cdash_domain_field_ref() }
            , {'sdtmDatasetMappingTargets', list(openapi_sdtm_dataset_variable_ref_target:openapi_sdtm_dataset_variable_ref_target()) }
            , {'sdtmigDatasetMappingTargets', list(openapi_sdtmig_dataset_variable_ref_target:openapi_sdtmig_dataset_variable_ref_target()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

