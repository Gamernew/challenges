#!/usr/bin/env ruby

require 'csv'
require_relative 'person'

# initialize array
@persons = Array.new


# extract and parse csv file without header column
CSV.foreach('source.csv') do |row|
  # populate class Person
  person = Person.new(row[0], row[1], row[2], row[3])
  # populate all persons
  @persons.push(person)
end


# check if it's good with an each and puts output
@persons.each do |person|
  puts ''
  puts "Person gender : #{person.gender(person.title)}, first_name : #{person.first_name}, last_name : #{person.last_name}, email : #{person.email}"
end
