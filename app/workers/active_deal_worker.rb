class ActiveDealWorker
  include Sidekiq::Worker

  def perform(*args)
    deal = Deal.scheduled.first
    deal.update(status: :active)
  end
end
