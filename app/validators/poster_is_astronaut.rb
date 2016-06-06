class PosterIsAstronaut < ActiveModel::Validator
  def validate(record)
    unless record.astronaut.astronaut?
      record.errors.add(:astronaut, "Poster needs to be an astronaut")
    end
  end
end