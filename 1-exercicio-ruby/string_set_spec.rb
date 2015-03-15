require_relative 'string_set'

describe StringSet do
  subject { StringSet.new items }

  let(:items) { ["Ruby", "Python", "Java", "Perl"] }
  let(:another_string_set) { StringSet.new(items << "Dart") }

  describe '#initialize' do

    it 'returns StringSet object' do
      expect(subject.class).to eq StringSet
    end

    it 'initializes StringSet items' do
      expect(subject.items).to eq items
    end
  end

  describe '#add' do
    let(:new_item) { "Javascript" }
    let(:new_string_set) { subject.add(new_item) }

    xit 'returns new StringSet object' do
      expect(new_string_set.class).to eq StringSet
    end

    xit 'includes new item' do
      expect(new_string_set.items).to include(new_item)
    end
  end

  describe '#exists?' do

    it 'returns false for nonexistent item' do
      expect(subject.exists?("nonexistent")).to eq false
    end

    it 'returns true for existent item' do
      expect(subject.exists?("Ruby")).to eq true
    end
  end

  describe '#union' do
    let(:union_string_set) { subject.union another_string_set }

    it 'returns new StringSet object' do
      expect(union_string_set.equal?(subject)).to eq false
    end

    it 'returns performs union' do
      expect(union_string_set.items).to eq subject.items | another_string_set.items
    end
  end

  describe '#union!' do
    let(:union_string_set) { subject.union! another_string_set }

    it 'returns same StringSet object' do
      expect(union_string_set.equal?(subject)).to eq true
    end

    it 'returns performs union' do
      expect(union_string_set.items).to eq subject.items | another_string_set.items
    end
  end
end
