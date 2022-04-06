defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list sum" do
      list = [1,2,3]
      response = SumList.call(list)
      assert response == 6
    end
  end
end
