-module(openapi_adam_product_datastructures).

-export([encode/1]).

-export_type([openapi_adam_product_datastructures/0]).

-type openapi_adam_product_datastructures() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'source' => binary(),
       'effectiveDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       '_links' => openapi_adam_product_datastructures_links:openapi_adam_product_datastructures_links()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'source' := Source,
          'effectiveDate' := EffectiveDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          '_links' := Links
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'source' => Source,
       'effectiveDate' => EffectiveDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       '_links' => Links
     }.
