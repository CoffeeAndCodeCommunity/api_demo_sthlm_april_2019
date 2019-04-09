# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { 'Random title' }
    description { 'Lorem ipsum' }
    year { Date.today }
  end
end
