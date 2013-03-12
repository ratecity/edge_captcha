class Feedback

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :message, :id

  def initialize(attributes = {})
    attributes ||= {}
    attributes.reverse_merge(default_attributes).each do |name, value|
      send("#{name}=", value)
    end
  end

  def default_attributes
    {name: nil, message: nil}
  end

  def persisted?
    true
  end
end
