-module(openapi_sdtm_classes_links).

-include("openapi.hrl").

-export([openapi_sdtm_classes_links/0]).

-export([openapi_sdtm_classes_links/1]).

-export_type([openapi_sdtm_classes_links/0]).

-type openapi_sdtm_classes_links() ::
  [ {'self', openapi_sdtm_classes_ref:openapi_sdtm_classes_ref() }
  | {'priorVersion', openapi_sdtm_classes_ref:openapi_sdtm_classes_ref() }
  | {'classes', list(openapi_sdtm_class_ref_element:openapi_sdtm_class_ref_element()) }
  ].


openapi_sdtm_classes_links() ->
    openapi_sdtm_classes_links([]).

openapi_sdtm_classes_links(Fields) ->
  Default = [ {'self', openapi_sdtm_classes_ref:openapi_sdtm_classes_ref() }
            , {'priorVersion', openapi_sdtm_classes_ref:openapi_sdtm_classes_ref() }
            , {'classes', list(openapi_sdtm_class_ref_element:openapi_sdtm_class_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

