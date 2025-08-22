-module(openapi_xml_ct_package).

-export([encode/1]).

-export_type([openapi_xml_ct_package/0]).

-type openapi_xml_ct_package() ::
    #{ 'self' => openapi_ct_package:openapi_ct_package()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
