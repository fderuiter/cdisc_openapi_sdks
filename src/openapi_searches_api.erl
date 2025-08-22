-module(openapi_searches_api).

-export([mdr_search_get/2, mdr_search_get/3,
         mdr_search_scopes_get/1, mdr_search_scopes_get/2,
         mdr_search_scopes_scope_get/2, mdr_search_scopes_scope_get/3]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get Search Results Across CDISC Library
-spec mdr_search_get(ctx:ctx(), binary()) -> {ok, openapi_default_search_response:openapi_default_search_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_get(Ctx, Q) ->
    mdr_search_get(Ctx, Q, #{}).

-spec mdr_search_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_default_search_response:openapi_default_search_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_get(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/search"],
    QS = lists:flatten([{<<"q">>, Q}])++openapi_utils:optional_params(['highlight', 'start', 'pageSize', 'class', 'codelist', 'conceptId', 'core', 'dataStructure', 'datasetStructure', 'definition', 'description', 'domain', 'effectiveDate', 'extensible', 'href', 'label', 'measureType', 'name', 'preferredTerm', 'product', 'productGroup', 'registrationStatus', 'roleDescription', 'sdtmTarget', 'simpleDatatype', 'submissionValue', 'synonyms', 'type', 'uiHref', 'valueDomain', 'variableSet', 'version'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Search Results Across CDISC Library
-spec mdr_search_scopes_get(ctx:ctx()) -> {ok, openapi__mdr_search_scopes_get_200_response:openapi__mdr_search_scopes_get_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_scopes_get(Ctx) ->
    mdr_search_scopes_get(Ctx, #{}).

-spec mdr_search_scopes_get(ctx:ctx(), maps:map()) -> {ok, openapi__mdr_search_scopes_get_200_response:openapi__mdr_search_scopes_get_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_scopes_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/search/scopes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Search Results Limited to Scope
-spec mdr_search_scopes_scope_get(ctx:ctx(), openapi_default_search_scopes) -> {ok, openapi_scope_values:openapi_scope_values(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_scopes_scope_get(Ctx, Scope) ->
    mdr_search_scopes_scope_get(Ctx, Scope, #{}).

-spec mdr_search_scopes_scope_get(ctx:ctx(), openapi_default_search_scopes, maps:map()) -> {ok, openapi_scope_values:openapi_scope_values(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_search_scopes_scope_get(Ctx, Scope, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/search/scopes/", Scope, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


