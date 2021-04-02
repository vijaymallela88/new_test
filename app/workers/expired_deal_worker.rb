class ExpiredDealWorker
  include Sidekiq::Worker

  def perform(*args)
    deal = Deal.active
    deal.update_all(status: :inactive)
  end
end
