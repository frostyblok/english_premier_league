FactoryBot.define do
  factory :league_table do
    team { "MyString" }
    played { 1 }
    win { 1 }
    lose { 1 }
    draw { 1 }
    for_goal { 1 }
    against { 1 }
    points { 1 }
  end
end
