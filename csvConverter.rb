#!/usr/bin/env ruby

require 'csv'
require 'json'

@files = {
    :category => ["_id", "title", "description"],
    :craft => ["_id", "title", "description", "leads", "slackChannels", "devServicesPage"],
    :grade => ["_id", "title", "description", "hrCode"],
    :skill => ["gradeId", "categoryId", "title", "description"]
}

@array_fields = ["leads", "slackChannels"]

@files.each do |filename, columns|

  p "Converting #{filename}.csv to #{filename}.json"

  csv = CSV.parse(File.read("./data/#{filename}.csv").scrub, headers: true)

  output = []

  csv.each do |row|
    hashmap = {}
    columns.each do |column|
      hashmap[column] = @array_fields.include?(column) ? row[column].split(",") : row[column]
    end
    output.push(hashmap)
  end

  File.open("#{filename}.json","w") do |f|
    f << JSON.pretty_generate(output)
  end

end

