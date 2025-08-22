-module(openapi_xml_root_sdtm_class_variable).

-include("openapi.hrl").

-export([openapi_xml_root_sdtm_class_variable/0]).

-export([openapi_xml_root_sdtm_class_variable/1]).

-export_type([openapi_xml_root_sdtm_class_variable/0]).

-type openapi_xml_root_sdtm_class_variable() ::
  [ {'self', openapi_root_sdtm_class_variable:openapi_root_sdtm_class_variable() }
  ].


openapi_xml_root_sdtm_class_variable() ->
    openapi_xml_root_sdtm_class_variable([]).

openapi_xml_root_sdtm_class_variable(Fields) ->
  Default = [ {'self', openapi_root_sdtm_class_variable:openapi_root_sdtm_class_variable() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

