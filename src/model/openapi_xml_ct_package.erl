-module(openapi_xml_ct_package).

-include("openapi.hrl").

-export([openapi_xml_ct_package/0]).

-export([openapi_xml_ct_package/1]).

-export_type([openapi_xml_ct_package/0]).

-type openapi_xml_ct_package() ::
  [ {'self', openapi_ct_package:openapi_ct_package() }
  ].


openapi_xml_ct_package() ->
    openapi_xml_ct_package([]).

openapi_xml_ct_package(Fields) ->
  Default = [ {'self', openapi_ct_package:openapi_ct_package() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

