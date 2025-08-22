-module(openapi_qrs_product).

-export([encode/1]).

-export_type([openapi_qrs_product/0]).

-type openapi_qrs_product() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'effectiveDate' => binary(),
       'untilDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       'qrsType' => binary(),
       '_links' => openapi_qrs_product_links:openapi_qrs_product_links(),
       'items' => list()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'effectiveDate' := EffectiveDate,
          'untilDate' := UntilDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          'qrsType' := QrsType,
          '_links' := Links,
          'items' := Items
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'effectiveDate' => EffectiveDate,
       'untilDate' => UntilDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       'qrsType' => QrsType,
       '_links' => Links,
       'items' => Items
     }.
