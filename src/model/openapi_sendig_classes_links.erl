-module(openapi_sendig_classes_links).

-include("openapi.hrl").

-export([openapi_sendig_classes_links/0]).

-export([openapi_sendig_classes_links/1]).

-export_type([openapi_sendig_classes_links/0]).

-type openapi_sendig_classes_links() ::
  [ {'self', openapi_sendig_classes_ref:openapi_sendig_classes_ref() }
  | {'priorVersion', openapi_sendig_classes_ref:openapi_sendig_classes_ref() }
  | {'classes', list(openapi_sendig_class_ref_element:openapi_sendig_class_ref_element()) }
  ].


openapi_sendig_classes_links() ->
    openapi_sendig_classes_links([]).

openapi_sendig_classes_links(Fields) ->
  Default = [ {'self', openapi_sendig_classes_ref:openapi_sendig_classes_ref() }
            , {'priorVersion', openapi_sendig_classes_ref:openapi_sendig_classes_ref() }
            , {'classes', list(openapi_sendig_class_ref_element:openapi_sendig_class_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

