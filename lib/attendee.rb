class Attendee

  attr_reader :name

  def initialize(params)
    @name = params[:name]
    @budget_dols = params[:budget]
  end

  def budget
    @budget_dols[1..].to_i
  end
end
