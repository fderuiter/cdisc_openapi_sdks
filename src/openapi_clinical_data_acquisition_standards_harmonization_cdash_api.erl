-module(openapi_clinical_data_acquisition_standards_harmonization_cdash_api).

-export([mdr_cdash_version_classes_class_domains_get/3, mdr_cdash_version_classes_class_domains_get/4,
         mdr_cdash_version_classes_class_fields_field_get/4, mdr_cdash_version_classes_class_fields_field_get/5,
         mdr_cdash_version_classes_class_get/3, mdr_cdash_version_classes_class_get/4,
         mdr_cdash_version_classes_get/2, mdr_cdash_version_classes_get/3,
         mdr_cdash_version_domains_domain_fields_field_get/4, mdr_cdash_version_domains_domain_fields_field_get/5,
         mdr_cdash_version_domains_domain_fields_get/3, mdr_cdash_version_domains_domain_fields_get/4,
         mdr_cdash_version_domains_domain_get/3, mdr_cdash_version_domains_domain_get/4,
         mdr_cdash_version_domains_get/2, mdr_cdash_version_domains_get/3,
         mdr_cdash_version_get/2, mdr_cdash_version_get/3,
         mdr_root_cdash_classes_class_fields_field_get/3, mdr_root_cdash_classes_class_fields_field_get/4,
         mdr_root_cdash_domains_domain_fields_field_get/3, mdr_root_cdash_domains_domain_fields_field_get/4]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get CDASH Class Domain List
-spec mdr_cdash_version_classes_class_domains_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdash_class_domains:openapi_cdash_class_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_domains_get(Ctx, Version, Class) ->
    mdr_cdash_version_classes_class_domains_get(Ctx, Version, Class, #{}).

-spec mdr_cdash_version_classes_class_domains_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_class_domains:openapi_cdash_class_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_domains_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/classes/", Class, "/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Class Field
-spec mdr_cdash_version_classes_class_fields_field_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_cdash_class_field:openapi_cdash_class_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_fields_field_get(Ctx, Version, Class, Field) ->
    mdr_cdash_version_classes_class_fields_field_get(Ctx, Version, Class, Field, #{}).

-spec mdr_cdash_version_classes_class_fields_field_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_class_field:openapi_cdash_class_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_fields_field_get(Ctx, Version, Class, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/classes/", Class, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Class
-spec mdr_cdash_version_classes_class_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdash_class:openapi_cdash_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_get(Ctx, Version, Class) ->
    mdr_cdash_version_classes_class_get(Ctx, Version, Class, #{}).

-spec mdr_cdash_version_classes_class_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_class:openapi_cdash_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_class_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/classes/", Class, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Class List
-spec mdr_cdash_version_classes_get(ctx:ctx(), binary()) -> {ok, openapi_cdash_product_classes:openapi_cdash_product_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_get(Ctx, Version) ->
    mdr_cdash_version_classes_get(Ctx, Version, #{}).

-spec mdr_cdash_version_classes_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdash_product_classes:openapi_cdash_product_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_classes_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/classes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Domain Field
-spec mdr_cdash_version_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_cdash_domain_field:openapi_cdash_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field) ->
    mdr_cdash_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field, #{}).

-spec mdr_cdash_version_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_domain_field:openapi_cdash_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/domains/", Domain, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Domain Field List
-spec mdr_cdash_version_domains_domain_fields_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdash_domain_fields:openapi_cdash_domain_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_fields_get(Ctx, Version, Domain) ->
    mdr_cdash_version_domains_domain_fields_get(Ctx, Version, Domain, #{}).

-spec mdr_cdash_version_domains_domain_fields_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_domain_fields:openapi_cdash_domain_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_fields_get(Ctx, Version, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/domains/", Domain, "/fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Domain
-spec mdr_cdash_version_domains_domain_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdash_domain:openapi_cdash_domain(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_get(Ctx, Version, Domain) ->
    mdr_cdash_version_domains_domain_get(Ctx, Version, Domain, #{}).

-spec mdr_cdash_version_domains_domain_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdash_domain:openapi_cdash_domain(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_domain_get(Ctx, Version, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/domains/", Domain, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Domain List
-spec mdr_cdash_version_domains_get(ctx:ctx(), binary()) -> {ok, openapi_cdash_product_domains:openapi_cdash_product_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_get(Ctx, Version) ->
    mdr_cdash_version_domains_get(Ctx, Version, #{}).

-spec mdr_cdash_version_domains_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdash_product_domains:openapi_cdash_product_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_domains_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, "/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASH Product
-spec mdr_cdash_version_get(ctx:ctx(), binary()) -> {ok, openapi_cdash_product:openapi_cdash_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_get(Ctx, Version) ->
    mdr_cdash_version_get(Ctx, Version, #{}).

-spec mdr_cdash_version_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdash_product:openapi_cdash_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdash_version_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdash/", Version, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Root CDASH Class Field
-spec mdr_root_cdash_classes_class_fields_field_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_cdash_class_field:openapi_root_cdash_class_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdash_classes_class_fields_field_get(Ctx, Class, Field) ->
    mdr_root_cdash_classes_class_fields_field_get(Ctx, Class, Field, #{}).

-spec mdr_root_cdash_classes_class_fields_field_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_cdash_class_field:openapi_root_cdash_class_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdash_classes_class_fields_field_get(Ctx, Class, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/cdash/classes/", Class, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Root CDASH Domain Field
-spec mdr_root_cdash_domains_domain_fields_field_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_cdash_domain_field:openapi_root_cdash_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdash_domains_domain_fields_field_get(Ctx, Domain, Field) ->
    mdr_root_cdash_domains_domain_fields_field_get(Ctx, Domain, Field, #{}).

-spec mdr_root_cdash_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_cdash_domain_field:openapi_root_cdash_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdash_domains_domain_fields_field_get(Ctx, Domain, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/cdash/domains/", Domain, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


