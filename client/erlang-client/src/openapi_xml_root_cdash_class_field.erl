-module(openapi_xml_root_cdash_class_field).

-export([encode/1]).

-export_type([openapi_xml_root_cdash_class_field/0]).

-type openapi_xml_root_cdash_class_field() ::
    #{ 'self' => openapi_root_cdash_class_field:openapi_root_cdash_class_field()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
