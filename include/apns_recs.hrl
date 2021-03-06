%%% ==========================================================================
%%% Copyright 2015 Silent Circle
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%% ==========================================================================

%%%-------------------------------------------------------------------
%%% @author Edwin Fine <efine@silentcircle.com>
%%% @copyright (C) 2015 Silent Circle LLC
%%% @doc Records used in this library.
%%% @end
%%%====================================================================
-ifndef(__APNS_RECS_HRL).
-define(__APNS_RECS_HRL, true).

-include("apns_types.hrl").

-record(apns_notification, {
        cmd      = simple :: cmd_type(),
        id       = 0      :: integer(),
        expire   = 0      :: integer(),
        token    = <<>>   :: binary(),
        payload  = <<>>   :: binary(),
        priority = 5      :: non_neg_integer(),
        rest     = <<>>   :: binary()
    }).

-record(apns_error, {
        id          = 0         :: integer(),
        status      = undefined :: atom(),
        status_code = 0         :: integer(),
        status_desc = <<>>      :: binary() % binary string
    }).

-endif.
