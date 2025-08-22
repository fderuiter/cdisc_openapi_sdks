-module(openapi_sdtm_product).

-export([encode/1]).

-export_type([openapi_sdtm_product/0]).

-type openapi_sdtm_product() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'source' => binary(),
       'effectiveDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       '_links' => openapi_sdtm_product_links:openapi_sdtm_product_links(),
       'classes' => list(),
       'datasets' => list()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'source' := Source,
          'effectiveDate' := EffectiveDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          '_links' := Links,
          'classes' := Classes,
          'datasets' := Datasets
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'source' => Source,
       'effectiveDate' => EffectiveDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       '_links' => Links,
       'classes' => Classes,
       'datasets' => Datasets
     }.
