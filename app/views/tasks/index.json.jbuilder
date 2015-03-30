json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :time, :duration, :category, :subtasks, :notes, :recurring, :days
  json.url task_url(task, format: :json)
end
