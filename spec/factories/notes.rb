FactoryBot.define do
  factory :note do
    record_date          { '2000-01-01' }
    weather_id           { Faker::Number.between(from: 2, to: 4) }
    responsible_person   { '田中 '}
    utilization_time     { '2000-02-02' }
    body_temperature     { '36.6' }
    pulse                { '80' }
    dbp                  { '70' }
    sbp                  { '100' }
    taking_medicine_id   { Faker::Number.between(from: 2, to: 3) }
    usage_type_id        { Faker::Number.between(from: 2, to: 4) }
    bathing_id           { Faker::Number.between(from: 2, to: 3) }
    facility_user        { '石田' }
  end
end
