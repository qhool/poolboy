%% Poolboy - A hunky Erlang worker pool factory

-module(poolboy_worker).

-callback start_link(WorkerArgs) -> {ok, Pid} |
                                    {error, {already_started, Pid}} |
                                    {error, Reason} when
    WorkerArgs :: proplists:proplist(),
    Pid        :: pid(),
    Reason     :: term().

-callback on_checkout(Pid) -> ok when
    Pid        :: pid().

-callback on_checkin(Pid) -> ok when
    Pid        :: pid().

-callback on_exit(Pid, Reason) -> ok when
    Pid        :: pid(),
    Reason     :: term().
