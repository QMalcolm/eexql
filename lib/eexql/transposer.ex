defmodule Eexql.Transposer do

  defmacro transposition(variable, operations \\ [], options \\ []) when is_atom(variable) and is_list(operations), is_list(options) do

    quote do
      Ecto.Schema.__field__(__MODULE__, unquote(variable), unquote(operations), unquote(options))
    end
  end
end
