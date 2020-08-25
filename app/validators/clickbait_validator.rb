class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      unless record.title.include?("Won't Believe" || 'Top' || 'Guess' || 'Secret')
        record.errors[:title] << 'not clickbaity enough'
      end

  end
  end
end

# Finally, add a custom validator to Post that ensures the title is sufficiently clickbait-y.
# If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.

# class InnocenceValidator < ActiveModel::Validator
#   def validate(record)
#     if record.description
#       record.errors[:description] << 'is too devilish.' if record.description.match?('devil')
#     end
#   end
# end
