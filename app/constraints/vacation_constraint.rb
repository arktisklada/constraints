class VacationConstraint
  def self.matches?(request)
    vacation = Vacation.find_by_slug(request.params[:vacation]) rescue nil
    vacation.present?
  end
end