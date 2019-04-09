# frozen_string_literal: true

describe 'GET /api/movies' do
  let!(:movies) { 5.times { FactoryBot.create(:movie) } }

  let!(:specific_movie) { FactoryBot.create(:movie, title: 'Bladerunner')}
  before { get '/api/movies' }

  it 'returns a 200 status' do
    expect(response.status).to eq 200
  end

  it 'retuns a collection of movies' do
    # binding.pry
    expect(JSON.parse(response.body)['movies'].count).to eq 6
  end

  it 'returns "Bladerunner" as the last movie' do
    binding.pry
    expect(JSON.parse(response.body)['movies'].last['title']).to eq 'Bladerunner'
  end
end
