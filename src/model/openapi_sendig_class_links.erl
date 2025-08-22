-module(openapi_sendig_class_links).

-include("openapi.hrl").

-export([openapi_sendig_class_links/0]).

-export([openapi_sendig_class_links/1]).

-export_type([openapi_sendig_class_links/0]).

-type openapi_sendig_class_links() ::
  [ {'self', openapi_sendig_class_ref:openapi_sendig_class_ref() }
  | {'modelClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  | {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
  | {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
  | {'subclasses', list(openapi_sendig_class_ref_subclass:openapi_sendig_class_ref_subclass()) }
  | {'priorVersion', openapi_sendig_class_ref:openapi_sendig_class_ref() }
  ].


openapi_sendig_class_links() ->
    openapi_sendig_class_links([]).

openapi_sendig_class_links(Fields) ->
  Default = [ {'self', openapi_sendig_class_ref:openapi_sendig_class_ref() }
            , {'modelClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            , {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
            , {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
            , {'subclasses', list(openapi_sendig_class_ref_subclass:openapi_sendig_class_ref_subclass()) }
            , {'priorVersion', openapi_sendig_class_ref:openapi_sendig_class_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

