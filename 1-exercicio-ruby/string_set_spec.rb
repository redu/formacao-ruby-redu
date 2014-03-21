require_relative 'string_set'

describe StringSet do
  let(:items) { ["Ruby", "Python", "Java", "Perl"] }
  let(:string_set) { StringSet.new items }
  let(:another_string_set) { StringSet.new(items << "Dart") }

  describe '#initialize' do

    it 'returns StringSet object' do
      string_set.class.should == StringSet
    end

    it 'initializes StringSet items' do
      string_set.items.should == items
    end
  end

  describe '#add' do
    let(:new_item) { "Javascript" }
    let(:new_string_set) { string_set.add(new_item) }

    xit 'returns new StringSet object' do
      new_string_set.class.should == StringSet
    end

    xit 'includes new item' do
      new_string_set.items.should include(new_item)
    end
  end

  describe '#exists?' do

    it 'returns false for nonexistent item' do
      string_set.exists?("nonexistent").should be_false
    end

    it 'returns true for existent item' do
      string_set.exists?("Ruby").should be_true
    end
  end

  describe '#union' do
    let(:union_string_set) { string_set.union another_string_set }

    it 'returns new StringSet object' do
      union_string_set.equal?(string_set).should be_false
    end

    it 'returns performs union' do
      union_string_set.items.should == string_set.items | another_string_set.items
    end
  end

  describe '#union!' do
    let(:union_string_set) { string_set.union! another_string_set }

    it 'returns same StringSet object' do
      union_string_set.equal?(string_set).should be_true
    end

    it 'returns performs union' do
      union_string_set.items.should == string_set.items | another_string_set.items
    end
  end
end
