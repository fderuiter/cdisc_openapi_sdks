-module(openapi_sdtm_class_variable_links).

-include("openapi.hrl").

-export([openapi_sdtm_class_variable_links/0]).

-export([openapi_sdtm_class_variable_links/1]).

-export_type([openapi_sdtm_class_variable_links/0]).

-type openapi_sdtm_class_variable_links() ::
  [ {'self', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  | {'qualifiesVariables', list(openapi_sdtm_class_variable_ref_qualifies:openapi_sdtm_class_variable_ref_qualifies()) }
  | {'rootItem', openapi_root_sdtm_class_variable_ref:openapi_root_sdtm_class_variable_ref() }
  | {'priorVersion', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
  ].


openapi_sdtm_class_variable_links() ->
    openapi_sdtm_class_variable_links([]).

openapi_sdtm_class_variable_links(Fields) ->
  Default = [ {'self', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            , {'qualifiesVariables', list(openapi_sdtm_class_variable_ref_qualifies:openapi_sdtm_class_variable_ref_qualifies()) }
            , {'rootItem', openapi_root_sdtm_class_variable_ref:openapi_root_sdtm_class_variable_ref() }
            , {'priorVersion', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

