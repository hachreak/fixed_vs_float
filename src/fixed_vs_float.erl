-module(fixed_vs_float).

%% API exports
-export([run/1]).

%%====================================================================
%% API functions
%%====================================================================

run(N) ->
  lists:foreach(fun({I, Value}) ->
      io:format("~4B | ~p~n", [I, Value])
    end, enumerate(floats(N))).

%%====================================================================
%% Internal functions
%%====================================================================

enumerate(Items) ->
  lists:zip(lists:seq(1, length(Items)), Items).

floats(N) ->
  Xinit = [4, 4.25],
  lists:foldl(fun(I, X) ->
      New = rec(lists:nth(I, X), lists:nth(I - 1, X)),
      X ++ [New]
    end, Xinit, lists:seq(2, N - 1)).

rec(Y, Z) ->
  108 - ((815 - 1500 / Z) / Y).
