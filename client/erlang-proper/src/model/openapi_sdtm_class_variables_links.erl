-module(openapi_sdtm_class_variables_links).

-include("openapi.hrl").

-export([openapi_sdtm_class_variables_links/0]).

-export([openapi_sdtm_class_variables_links/1]).

-export_type([openapi_sdtm_class_variables_links/0]).

-type openapi_sdtm_class_variables_links() ::
  [ {'self', openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'priorVersion', openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref() }
  | {'classVariables', list(openapi_sdtm_class_variable_ref_element:openapi_sdtm_class_variable_ref_element()) }
  ].


openapi_sdtm_class_variables_links() ->
    openapi_sdtm_class_variables_links([]).

openapi_sdtm_class_variables_links(Fields) ->
  Default = [ {'self', openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'priorVersion', openapi_sdtm_class_variables_ref:openapi_sdtm_class_variables_ref() }
            , {'classVariables', list(openapi_sdtm_class_variable_ref_element:openapi_sdtm_class_variable_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

