class ApplicationService
  class << self
    delegate :call, to: :new
  end

  def call
    raise NotImplementedError
  end
end
