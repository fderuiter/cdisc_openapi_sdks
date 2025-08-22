-module(openapi_controlled_terminology_ct_api).

-export([mdr_ct_packages_get/1, mdr_ct_packages_get/2,
         mdr_ct_packages_package_codelists_codelist_get/3, mdr_ct_packages_package_codelists_codelist_get/4,
         mdr_ct_packages_package_codelists_codelist_terms_get/3, mdr_ct_packages_package_codelists_codelist_terms_get/4,
         mdr_ct_packages_package_codelists_codelist_terms_term_get/4, mdr_ct_packages_package_codelists_codelist_terms_term_get/5,
         mdr_ct_packages_package_codelists_get/2, mdr_ct_packages_package_codelists_get/3,
         mdr_ct_packages_product_get/2, mdr_ct_packages_product_get/3,
         mdr_root_ct_product_group_codelists_codelist_get/3, mdr_root_ct_product_group_codelists_codelist_get/4,
         mdr_root_ct_product_group_codelists_codelist_terms_term_get/4, mdr_root_ct_product_group_codelists_codelist_terms_term_get/5]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get CDISC Library CT Package List
-spec mdr_ct_packages_get(ctx:ctx()) -> {ok, openapi_ct_packages:openapi_ct_packages(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_get(Ctx) ->
    mdr_ct_packages_get(Ctx, #{}).

-spec mdr_ct_packages_get(ctx:ctx(), maps:map()) -> {ok, openapi_ct_packages:openapi_ct_packages(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library CT Package Codelist
-spec mdr_ct_packages_package_codelists_codelist_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_ct_codelist:openapi_ct_codelist(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_get(Ctx, Package, Codelist) ->
    mdr_ct_packages_package_codelists_codelist_get(Ctx, Package, Codelist, #{}).

-spec mdr_ct_packages_package_codelists_codelist_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_ct_codelist:openapi_ct_codelist(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_get(Ctx, Package, Codelist, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages/", Package, "/codelists/", Codelist, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library CT Package Codelist Term List
-spec mdr_ct_packages_package_codelists_codelist_terms_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_ct_codelist_terms:openapi_ct_codelist_terms(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_terms_get(Ctx, Package, Codelist) ->
    mdr_ct_packages_package_codelists_codelist_terms_get(Ctx, Package, Codelist, #{}).

-spec mdr_ct_packages_package_codelists_codelist_terms_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_ct_codelist_terms:openapi_ct_codelist_terms(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_terms_get(Ctx, Package, Codelist, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages/", Package, "/codelists/", Codelist, "/terms"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library CT Package Codelist Term
-spec mdr_ct_packages_package_codelists_codelist_terms_term_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_ct_term:openapi_ct_term(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_terms_term_get(Ctx, Package, Codelist, Term) ->
    mdr_ct_packages_package_codelists_codelist_terms_term_get(Ctx, Package, Codelist, Term, #{}).

-spec mdr_ct_packages_package_codelists_codelist_terms_term_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_ct_term:openapi_ct_term(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_codelist_terms_term_get(Ctx, Package, Codelist, Term, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages/", Package, "/codelists/", Codelist, "/terms/", Term, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library CT Package Codelist List
-spec mdr_ct_packages_package_codelists_get(ctx:ctx(), binary()) -> {ok, openapi_ct_package_codelists:openapi_ct_package_codelists(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_get(Ctx, Package) ->
    mdr_ct_packages_package_codelists_get(Ctx, Package, #{}).

-spec mdr_ct_packages_package_codelists_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_ct_package_codelists:openapi_ct_package_codelists(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_package_codelists_get(Ctx, Package, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages/", Package, "/codelists"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library CT Package
-spec mdr_ct_packages_product_get(ctx:ctx(), binary()) -> {ok, openapi_ct_package:openapi_ct_package(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_product_get(Ctx, Product) ->
    mdr_ct_packages_product_get(Ctx, Product, #{}).

-spec mdr_ct_packages_product_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_ct_package:openapi_ct_package(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_ct_packages_product_get(Ctx, Product, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/ct/packages/", Product, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Root CT Codelist
-spec mdr_root_ct_product_group_codelists_codelist_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_ct_codelist:openapi_root_ct_codelist(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_ct_product_group_codelists_codelist_get(Ctx, ProductGroup, Codelist) ->
    mdr_root_ct_product_group_codelists_codelist_get(Ctx, ProductGroup, Codelist, #{}).

-spec mdr_root_ct_product_group_codelists_codelist_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_ct_codelist:openapi_root_ct_codelist(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_ct_product_group_codelists_codelist_get(Ctx, ProductGroup, Codelist, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/ct/", ProductGroup, "/codelists/", Codelist, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Root CT Term
-spec mdr_root_ct_product_group_codelists_codelist_terms_term_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_root_ct_term:openapi_root_ct_term(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_ct_product_group_codelists_codelist_terms_term_get(Ctx, ProductGroup, Codelist, Term) ->
    mdr_root_ct_product_group_codelists_codelist_terms_term_get(Ctx, ProductGroup, Codelist, Term, #{}).

-spec mdr_root_ct_product_group_codelists_codelist_terms_term_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_root_ct_term:openapi_root_ct_term(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_ct_product_group_codelists_codelist_terms_term_get(Ctx, ProductGroup, Codelist, Term, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/ct/", ProductGroup, "/codelists/", Codelist, "/terms/", Term, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


