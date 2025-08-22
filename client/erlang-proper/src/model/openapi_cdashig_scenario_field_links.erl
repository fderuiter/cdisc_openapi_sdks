-module(openapi_cdashig_scenario_field_links).

-include("openapi.hrl").

-export([openapi_cdashig_scenario_field_links/0]).

-export([openapi_cdashig_scenario_field_links/1]).

-export_type([openapi_cdashig_scenario_field_links/0]).

-type openapi_cdashig_scenario_field_links() ::
  [ {'self', openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref() }
  | {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
  | {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
  | {'parentDomain', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
  | {'parentScenario', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
  | {'rootItem', openapi_root_cdashig_scenario_field_ref:openapi_root_cdashig_scenario_field_ref() }
  | {'priorVersion', openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref() }
  | {'sdtmigDatasetMappingTargets', list(openapi_sdtmig_dataset_variable_ref_target:openapi_sdtmig_dataset_variable_ref_target()) }
  ].


openapi_cdashig_scenario_field_links() ->
    openapi_cdashig_scenario_field_links([]).

openapi_cdashig_scenario_field_links(Fields) ->
  Default = [ {'self', openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref() }
            , {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
            , {'parentProduct', openapi_cdashig_product_ref:openapi_cdashig_product_ref() }
            , {'parentDomain', openapi_cdashig_domain_ref:openapi_cdashig_domain_ref() }
            , {'parentScenario', openapi_cdashig_scenario_ref:openapi_cdashig_scenario_ref() }
            , {'rootItem', openapi_root_cdashig_scenario_field_ref:openapi_root_cdashig_scenario_field_ref() }
            , {'priorVersion', openapi_cdashig_scenario_field_ref:openapi_cdashig_scenario_field_ref() }
            , {'sdtmigDatasetMappingTargets', list(openapi_sdtmig_dataset_variable_ref_target:openapi_sdtmig_dataset_variable_ref_target()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

