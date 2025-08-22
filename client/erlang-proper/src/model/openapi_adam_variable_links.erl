-module(openapi_adam_variable_links).

-include("openapi.hrl").

-export([openapi_adam_variable_links/0]).

-export([openapi_adam_variable_links/1]).

-export_type([openapi_adam_variable_links/0]).

-type openapi_adam_variable_links() ::
  [ {'self', openapi_adam_variable_ref:openapi_adam_variable_ref() }
  | {'codelist', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
  | {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
  | {'parentDatastructure', openapi_adam_datastructure_ref:openapi_adam_datastructure_ref() }
  | {'parentVariableSet', openapi_adam_varset_ref:openapi_adam_varset_ref() }
  | {'priorVersion', openapi_adam_variable_ref:openapi_adam_variable_ref() }
  ].


openapi_adam_variable_links() ->
    openapi_adam_variable_links([]).

openapi_adam_variable_links(Fields) ->
  Default = [ {'self', openapi_adam_variable_ref:openapi_adam_variable_ref() }
            , {'codelist', openapi_root_ct_codelist_ref:openapi_root_ct_codelist_ref() }
            , {'parentProduct', openapi_adam_product_ref:openapi_adam_product_ref() }
            , {'parentDatastructure', openapi_adam_datastructure_ref:openapi_adam_datastructure_ref() }
            , {'parentVariableSet', openapi_adam_varset_ref:openapi_adam_varset_ref() }
            , {'priorVersion', openapi_adam_variable_ref:openapi_adam_variable_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

