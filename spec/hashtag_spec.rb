# encoding: utf-8
# Тестовый сценарий для программы «Ищем в строке хэштеги на базе RSpec.

require_relative './../lib/hashtag.rb'

describe Hashtag do
  it 'Захватывается 1 хэштег' do
    expect(Hashtag.find_hashtag('123 #111 456')).to eq ['#111']
  end

  it 'Захватывается несколько хэштегов' do
    expect(Hashtag.find_hashtag('123 #111 456 #222 678')).to eq ['#111', '#222']
  end

  it 'Захватывается хэштег на русском' do
    expect(Hashtag.find_hashtag('123 #русский 456 222 678')).to eq ['#русский']
  end

  it 'Захватывается хэштег с подчеркиваниями' do
    expect(Hashtag.find_hashtag('123 #1_1_1 456 678')).to eq ['#1_1_1']
  end

  it 'Захватывается хэштег с минусами' do
    expect(Hashtag.find_hashtag('123 #1-1-1 456 222 678')).to eq ['#1-1-1']
  end

  it 'Не захватывается знак вопроса' do
    expect(Hashtag.find_hashtag('123 #111? 456 222 678')).to eq ['#111']
  end

  it 'Не захватывается восклицательный знак' do
    expect(Hashtag.find_hashtag('123 #111! 456 222 678')).to eq ['#111']
  end
end
