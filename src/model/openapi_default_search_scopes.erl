-module(openapi_default_search_scopes).

-include("openapi.hrl").

-export([openapi_default_search_scopes/0]).

-export_type([openapi_default_search_scopes/0]).

-type openapi_default_search_scopes() ::
  binary().

openapi_default_search_scopes() ->
  elements([<<"class">>, <<"codelist">>, <<"conceptId">>, <<"core">>, <<"dataStructure">>, <<"datasetStructure">>, <<"definition">>, <<"description">>, <<"domain">>, <<"effectiveDate">>, <<"extensible">>, <<"href">>, <<"label">>, <<"measureType">>, <<"name">>, <<"preferredTerm">>, <<"product">>, <<"productGroup">>, <<"registrationStatus">>, <<"roleDescription">>, <<"sdtmTarget">>, <<"simpleDatatype">>, <<"submissionValue">>, <<"synonyms">>, <<"type">>, <<"uiHref">>, <<"valueDomain">>, <<"variableSet">>, <<"version">>]).

