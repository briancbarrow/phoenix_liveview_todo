defmodule LiveviewTodo.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LiveviewTodo.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description",
        title: "some title"
      })
      |> LiveviewTodo.Tasks.create_task()

    task
  end
end
