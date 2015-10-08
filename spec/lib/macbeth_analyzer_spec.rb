require 'spec_helper'

describe MacbethAnalyzer do
  describe '#analyze' do
    it 'returns a Hash with the line counts' do
      macbeth_xml = File.open('spec/fixtures/macbeth.xml')
      macbeth_analyzer = MacbethAnalyzer.new(macbeth_xml)

      expect(macbeth_analyzer.analyze).to eq ({
        'First Witch' => 4,
        'Second Witch' => 3,
        'DUNCAN' => 3,
        'MALCOLM' => 5,
        'BANQUO' => 1,
        'FLEANCE' => 1,
      })
    end
  end

  describe '#analyze2' do
    it 'returns a Hash with the line counts' do
      macbeth_xml = File.open('spec/fixtures/macbeth.xml')
      macbeth_analyzer = MacbethAnalyzer.new(macbeth_xml)

      expect(macbeth_analyzer.analyze2).to eq ({
        'First Witch' => 4,
        'Second Witch' => 3,
        'DUNCAN' => 3,
        'MALCOLM' => 5,
        'BANQUO' => 1,
        'FLEANCE' => 1,
      })
    end
  end
end
