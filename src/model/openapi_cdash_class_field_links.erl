-module(openapi_cdash_class_field_links).

-include("openapi.hrl").

-export([openapi_cdash_class_field_links/0]).

-export([openapi_cdash_class_field_links/1]).

-export_type([openapi_cdash_class_field_links/0]).

-type openapi_cdash_class_field_links() ::
  [ {'self', openapi_cdash_class_field_ref:openapi_cdash_class_field_ref() }
  | {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
  | {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
  | {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
  | {'rootItem', openapi_root_cdash_class_field_ref:openapi_root_cdash_class_field_ref() }
  | {'priorVersion', openapi_cdash_class_field_ref:openapi_cdash_class_field_ref() }
  | {'sdtmClassMappingTargets', list(openapi_sdtm_class_variable_ref_target:openapi_sdtm_class_variable_ref_target()) }
  | {'sdtmDatasetMappingTargets', list(openapi_sdtm_dataset_variable_ref_target:openapi_sdtm_dataset_variable_ref_target()) }
  ].


openapi_cdash_class_field_links() ->
    openapi_cdash_class_field_links([]).

openapi_cdash_class_field_links(Fields) ->
  Default = [ {'self', openapi_cdash_class_field_ref:openapi_cdash_class_field_ref() }
            , {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
            , {'parentProduct', openapi_cdash_product_ref:openapi_cdash_product_ref() }
            , {'parentClass', openapi_cdash_class_ref:openapi_cdash_class_ref() }
            , {'rootItem', openapi_root_cdash_class_field_ref:openapi_root_cdash_class_field_ref() }
            , {'priorVersion', openapi_cdash_class_field_ref:openapi_cdash_class_field_ref() }
            , {'sdtmClassMappingTargets', list(openapi_sdtm_class_variable_ref_target:openapi_sdtm_class_variable_ref_target()) }
            , {'sdtmDatasetMappingTargets', list(openapi_sdtm_dataset_variable_ref_target:openapi_sdtm_dataset_variable_ref_target()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

