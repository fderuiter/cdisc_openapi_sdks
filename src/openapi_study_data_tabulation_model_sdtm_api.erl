-module(openapi_study_data_tabulation_model_sdtm_api).

-export([mdr_root_sdtm_classes_class_variables_var_get/3, mdr_root_sdtm_classes_class_variables_var_get/4,
         mdr_root_sdtm_datasets_dataset_variables_var_get/3, mdr_root_sdtm_datasets_dataset_variables_var_get/4,
         mdr_sdtm_version_classes_class_datasets_get/3, mdr_sdtm_version_classes_class_datasets_get/4,
         mdr_sdtm_version_classes_class_get/3, mdr_sdtm_version_classes_class_get/4,
         mdr_sdtm_version_classes_class_variables_get/3, mdr_sdtm_version_classes_class_variables_get/4,
         mdr_sdtm_version_classes_class_variables_var_get/4, mdr_sdtm_version_classes_class_variables_var_get/5,
         mdr_sdtm_version_classes_get/2, mdr_sdtm_version_classes_get/3,
         mdr_sdtm_version_datasets_dataset_get/3, mdr_sdtm_version_datasets_dataset_get/4,
         mdr_sdtm_version_datasets_dataset_variables_get/3, mdr_sdtm_version_datasets_dataset_variables_get/4,
         mdr_sdtm_version_datasets_dataset_variables_var_get/4, mdr_sdtm_version_datasets_dataset_variables_var_get/5,
         mdr_sdtm_version_datasets_get/2, mdr_sdtm_version_datasets_get/3,
         mdr_sdtm_version_get/2, mdr_sdtm_version_get/3]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get Root of SDTM Class Variable
-spec mdr_root_sdtm_classes_class_variables_var_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_sdtm_class_variable:openapi_root_sdtm_class_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sdtm_classes_class_variables_var_get(Ctx, Class, Var) ->
    mdr_root_sdtm_classes_class_variables_var_get(Ctx, Class, Var, #{}).

-spec mdr_root_sdtm_classes_class_variables_var_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_sdtm_class_variable:openapi_root_sdtm_class_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sdtm_classes_class_variables_var_get(Ctx, Class, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/sdtm/classes/", Class, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Root SDTM Dataset Variable
-spec mdr_root_sdtm_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_sdtm_dataset_variable:openapi_root_sdtm_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sdtm_datasets_dataset_variables_var_get(Ctx, Dataset, Var) ->
    mdr_root_sdtm_datasets_dataset_variables_var_get(Ctx, Dataset, Var, #{}).

-spec mdr_root_sdtm_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_sdtm_dataset_variable:openapi_root_sdtm_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sdtm_datasets_dataset_variables_var_get(Ctx, Dataset, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/sdtm/datasets/", Dataset, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Class Dataset List
-spec mdr_sdtm_version_classes_class_datasets_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sdtm_class_datasets:openapi_sdtm_class_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_datasets_get(Ctx, Version, Class) ->
    mdr_sdtm_version_classes_class_datasets_get(Ctx, Version, Class, #{}).

-spec mdr_sdtm_version_classes_class_datasets_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_class_datasets:openapi_sdtm_class_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_datasets_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/classes/", Class, "/datasets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Class
-spec mdr_sdtm_version_classes_class_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sdtm_class:openapi_sdtm_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_get(Ctx, Version, Class) ->
    mdr_sdtm_version_classes_class_get(Ctx, Version, Class, #{}).

-spec mdr_sdtm_version_classes_class_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_class:openapi_sdtm_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/classes/", Class, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Class Variable List
-spec mdr_sdtm_version_classes_class_variables_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sdtm_class_variables:openapi_sdtm_class_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_variables_get(Ctx, Version, Class) ->
    mdr_sdtm_version_classes_class_variables_get(Ctx, Version, Class, #{}).

-spec mdr_sdtm_version_classes_class_variables_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_class_variables:openapi_sdtm_class_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_variables_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/classes/", Class, "/variables"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Class Variable
-spec mdr_sdtm_version_classes_class_variables_var_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_sdtm_class_variable:openapi_sdtm_class_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_variables_var_get(Ctx, Version, Class, Var) ->
    mdr_sdtm_version_classes_class_variables_var_get(Ctx, Version, Class, Var, #{}).

-spec mdr_sdtm_version_classes_class_variables_var_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_class_variable:openapi_sdtm_class_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_class_variables_var_get(Ctx, Version, Class, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/classes/", Class, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Class List
-spec mdr_sdtm_version_classes_get(ctx:ctx(), binary()) -> {ok, openapi_sdtm_classes:openapi_sdtm_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_get(Ctx, Version) ->
    mdr_sdtm_version_classes_get(Ctx, Version, #{}).

-spec mdr_sdtm_version_classes_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sdtm_classes:openapi_sdtm_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_classes_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/classes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Dataset
-spec mdr_sdtm_version_datasets_dataset_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sdtm_dataset:openapi_sdtm_dataset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_get(Ctx, Version, Dataset) ->
    mdr_sdtm_version_datasets_dataset_get(Ctx, Version, Dataset, #{}).

-spec mdr_sdtm_version_datasets_dataset_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_dataset:openapi_sdtm_dataset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_get(Ctx, Version, Dataset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/datasets/", Dataset, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Dataset Variable List
-spec mdr_sdtm_version_datasets_dataset_variables_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sdtm_dataset_variables:openapi_sdtm_dataset_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_variables_get(Ctx, Version, Dataset) ->
    mdr_sdtm_version_datasets_dataset_variables_get(Ctx, Version, Dataset, #{}).

-spec mdr_sdtm_version_datasets_dataset_variables_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_dataset_variables:openapi_sdtm_dataset_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_variables_get(Ctx, Version, Dataset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/datasets/", Dataset, "/variables"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Dataset Variable
-spec mdr_sdtm_version_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_sdtm_dataset_variable:openapi_sdtm_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var) ->
    mdr_sdtm_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var, #{}).

-spec mdr_sdtm_version_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_sdtm_dataset_variable:openapi_sdtm_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/datasets/", Dataset, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM Dataset List
-spec mdr_sdtm_version_datasets_get(ctx:ctx(), binary()) -> {ok, openapi_sdtm_datasets:openapi_sdtm_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_get(Ctx, Version) ->
    mdr_sdtm_version_datasets_get(Ctx, Version, #{}).

-spec mdr_sdtm_version_datasets_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sdtm_datasets:openapi_sdtm_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_datasets_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, "/datasets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SDTM product
-spec mdr_sdtm_version_get(ctx:ctx(), binary()) -> {ok, openapi_sdtm_product:openapi_sdtm_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_get(Ctx, Version) ->
    mdr_sdtm_version_get(Ctx, Version, #{}).

-spec mdr_sdtm_version_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sdtm_product:openapi_sdtm_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sdtm_version_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sdtm/", Version, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


