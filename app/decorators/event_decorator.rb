class EventDecorator < Draper::Decorator
  delegate_all

  def color
    if date <= 10.days.after && date >= Date.today
      'text-danger'
    elsif date < Date.today
      'text-dark'
    end
  end
end
