-module(openapi_sdtm_class_links).

-include("openapi.hrl").

-export([openapi_sdtm_class_links/0]).

-export([openapi_sdtm_class_links/1]).

-export_type([openapi_sdtm_class_links/0]).

-type openapi_sdtm_class_links() ::
  [ {'self', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  | {'subclasses', list(openapi_sdtm_class_ref_subclass:openapi_sdtm_class_ref_subclass()) }
  | {'priorVersion', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  ].


openapi_sdtm_class_links() ->
    openapi_sdtm_class_links([]).

openapi_sdtm_class_links(Fields) ->
  Default = [ {'self', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            , {'subclasses', list(openapi_sdtm_class_ref_subclass:openapi_sdtm_class_ref_subclass()) }
            , {'priorVersion', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

