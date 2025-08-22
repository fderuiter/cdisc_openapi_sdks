-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% mdr_root_sdtm_classes_class_variables_var_get
%%==============================================================================

mdr_root_sdtm_classes_class_variables_var_get(Class, Var) ->
  openapi_api:mdr_root_sdtm_classes_class_variables_var_get(Class, Var).

mdr_root_sdtm_classes_class_variables_var_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_root_sdtm_datasets_dataset_variables_var_get
%%==============================================================================

mdr_root_sdtm_datasets_dataset_variables_var_get(Dataset, Var) ->
  openapi_api:mdr_root_sdtm_datasets_dataset_variables_var_get(Dataset, Var).

mdr_root_sdtm_datasets_dataset_variables_var_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_classes_class_datasets_get
%%==============================================================================

mdr_sdtm_version_classes_class_datasets_get(Version, Class) ->
  openapi_api:mdr_sdtm_version_classes_class_datasets_get(Version, Class).

mdr_sdtm_version_classes_class_datasets_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_classes_class_get
%%==============================================================================

mdr_sdtm_version_classes_class_get(Version, Class) ->
  openapi_api:mdr_sdtm_version_classes_class_get(Version, Class).

mdr_sdtm_version_classes_class_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_classes_class_variables_get
%%==============================================================================

mdr_sdtm_version_classes_class_variables_get(Version, Class) ->
  openapi_api:mdr_sdtm_version_classes_class_variables_get(Version, Class).

mdr_sdtm_version_classes_class_variables_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_classes_class_variables_var_get
%%==============================================================================

mdr_sdtm_version_classes_class_variables_var_get(Version, Class, Var) ->
  openapi_api:mdr_sdtm_version_classes_class_variables_var_get(Version, Class, Var).

mdr_sdtm_version_classes_class_variables_var_get_args(_S) ->
  [binary(), binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_classes_get
%%==============================================================================

mdr_sdtm_version_classes_get(Version) ->
  openapi_api:mdr_sdtm_version_classes_get(Version).

mdr_sdtm_version_classes_get_args(_S) ->
  [binary()].

%%==============================================================================
%% mdr_sdtm_version_datasets_dataset_get
%%==============================================================================

mdr_sdtm_version_datasets_dataset_get(Version, Dataset) ->
  openapi_api:mdr_sdtm_version_datasets_dataset_get(Version, Dataset).

mdr_sdtm_version_datasets_dataset_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_datasets_dataset_variables_get
%%==============================================================================

mdr_sdtm_version_datasets_dataset_variables_get(Version, Dataset) ->
  openapi_api:mdr_sdtm_version_datasets_dataset_variables_get(Version, Dataset).

mdr_sdtm_version_datasets_dataset_variables_get_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_datasets_dataset_variables_var_get
%%==============================================================================

mdr_sdtm_version_datasets_dataset_variables_var_get(Version, Dataset, Var) ->
  openapi_api:mdr_sdtm_version_datasets_dataset_variables_var_get(Version, Dataset, Var).

mdr_sdtm_version_datasets_dataset_variables_var_get_args(_S) ->
  [binary(), binary(), binary()].

%%==============================================================================
%% mdr_sdtm_version_datasets_get
%%==============================================================================

mdr_sdtm_version_datasets_get(Version) ->
  openapi_api:mdr_sdtm_version_datasets_get(Version).

mdr_sdtm_version_datasets_get_args(_S) ->
  [binary()].

%%==============================================================================
%% mdr_sdtm_version_get
%%==============================================================================

mdr_sdtm_version_get(Version) ->
  openapi_api:mdr_sdtm_version_get(Version).

mdr_sdtm_version_get_args(_S) ->
  [binary()].

