class ExampleJob < ApplicationJob
  queue_as :low_priority
  # queue_as :default

  def perform(*args)
    # Do something later
  end
end
