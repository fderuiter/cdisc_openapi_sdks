-module(openapi_adam_datastructure_variables_links).

-include("openapi.hrl").

-export([openapi_adam_datastructure_variables_links/0]).

-export([openapi_adam_datastructure_variables_links/1]).

-export_type([openapi_adam_datastructure_variables_links/0]).

-type openapi_adam_datastructure_variables_links() ::
  [ {'self', openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref() }
  | {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
  | {'priorVersion', openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref() }
  | {'analysisVariables', list(openapi_adam_variable_ref_element:openapi_adam_variable_ref_element()) }
  ].


openapi_adam_datastructure_variables_links() ->
    openapi_adam_datastructure_variables_links([]).

openapi_adam_datastructure_variables_links(Fields) ->
  Default = [ {'self', openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref() }
            , {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
            , {'priorVersion', openapi_adam_datastructure_variables_ref:openapi_adam_datastructure_variables_ref() }
            , {'analysisVariables', list(openapi_adam_variable_ref_element:openapi_adam_variable_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

