require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
   #given that holiday_hash looks like this:
  # holiday_supplies =
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
   #}
   #return the second element in the 4th of July
   #binding.pry
   return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  #   holiday_supplies =
  #   {
  #     :winter => {
  #       :christmas => ["Lights", "Wreath"],
  #       :new_years => ["Party Hats"]
  #     },
  #     :summer => {
  #       :fourth_of_july => ["Fireworks", "BBQ"]
  #     },
  #     :fall => {
  #       :thanksgiving => ["Turkey"]
  #     },
  #     :spring => {
  #       :memorial_day => ["BBQ"]
  #     }
  #   }
  #  binding.pry
     holiday_supplies[:winter][:christmas] << supply
     holiday_supplies[:winter][:new_years] << supply
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #binding.pry
  #holiday_supplies[:season] = season
  #holiday_supplies[:season][:holiday_name] = holiday_name.to_s
  holiday_supplies[season][holiday_name] = supply_array
  return holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_supplies = []
  holiday_supplies.each do |season, holiday|
    #binding.pry
    if season == :winter
      holiday.each do |holiday, supplies|
        new_supplies << [supplies]
        #binding.pry
      end #do
    end #if
  end #do
  return new_supplies.flatten
end #def

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
