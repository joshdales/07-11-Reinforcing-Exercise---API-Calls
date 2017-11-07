require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards = toronto_wards_json["objects"].map { |ward| ward["name"] }

puts toronto_wards

elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')

elections_json = JSON.parse(elections_response.body)

puts elections = elections_json["objects"].map { |election| "Election for #{election["name"]} on #{election["election_date"]}" }
