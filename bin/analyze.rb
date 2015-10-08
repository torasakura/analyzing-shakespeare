require 'open-uri'
require_relative '../lib/macbeth_analyzer.rb'

macbeth_xml = open('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
macbeth_analyzer = MacbethAnalyzer.new(macbeth_xml)
puts macbeth_analyzer.analyze2
puts macbeth_analyzer.analyze