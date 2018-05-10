FactoryBot.define do
 
  factory :quote do
    sequence :saying do |s|
      "This is Saying \##{s}"
    end
    sequence :author do |a|
      "Author#{a}"
    end
  end
end