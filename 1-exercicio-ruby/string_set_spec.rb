require_relative 'string_set'

describe StringSet do
  let(:items) { ["Ruby", "Python", "Java", "Perl"] }
  let(:string_set) { StringSet.new items }
  let(:another_string_set) { StringSet.new(items << "Dart") }

  describe '#initialize' do

    it 'returns StringSet object' do
      expect(string_set.class).to eq StringSet
    end

    it 'initializes StringSet items' do
      expect(string_set.items).to eq items
    end
  end

  describe '#add' do
    let(:new_item) { "Javascript" }
    let(:new_string_set) { string_set.add(new_item) }

    xit 'returns new StringSet object' do
      expect(new_string_set.class).to eq StringSet
    end

    xit 'includes new item' do
      expect(new_string_set.items).to include(new_item)
    end
  end

  describe '#exists?' do

    it 'returns false for nonexistent item' do
      expect(string_set.exists?("nonexistent")).to eq false
    end

    it 'returns true for existent item' do
      expect(string_set.exists?("Ruby")).to eq true
    end
  end

  describe '#union' do
    let(:union_string_set) { string_set.union another_string_set }

    it 'returns new StringSet object' do
      expect(union_string_set.equal?(string_set)).to eq false
    end

    it 'returns performs union' do
      expect(union_string_set.items).to eq string_set.items | another_string_set.items
    end
  end

  describe '#union!' do
    let(:union_string_set) { string_set.union! another_string_set }

    it 'returns same StringSet object' do
      expect(union_string_set.equal?(string_set)).to eq true
    end

    it 'returns performs union' do
      expect(union_string_set.items).to eq string_set.items | another_string_set.items
    end
  end
end
