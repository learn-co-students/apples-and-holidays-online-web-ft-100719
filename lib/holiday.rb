require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # holiday_hash={
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
  # }
  # return the second element in the 4th of July array
holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday| #first get into the hash of seasons by passing in the season and the holiday
    if season==:winter #if the season is winter
      holiday.each do |holiday, supply|#get into the seasons holidays pass in the holiday and array of supplies
        supply<<"Balloons"#add balloons to the supply
      end
    end
  end
  #better!
  #holiday_hash[:winter].each do |holiday, supplies|
    #supplies<<supply
  #end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season==:spring
      holiday.each do |holiday, supplies|
        supplies<<supply
      end
    end
  end
#better!!!!

#holiday_hash[:spring][:memorial_day]<< supply



end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season]={holiday_name => supply_array}
  #better!
  #holiday_hash[season][holiday_name]=supply_array
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies=[]
  holiday_hash.each do |season, holiday|
    if season== :winter
      holiday.each do |holiday, supply|
        supply.each do |item|
          all_supplies<<item
      end
    end
  end
#holiday_hash[:winter].reduce([]) do |supply_array, (holiday, supplies)|
  #supply_array<< supplies
#end.flatten

#Nancy's way:


#Danny Rookers way:
#holiday_hash[:winter].value.flatten

#that's totally it!



end

  all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map{|l|l.capitalize}.join(" ")}: #{supplies.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # holidays_with_BBQ=[]
  # holiday_hash.each do |season, holidays|
  #   holidays.each do |holiday, supplies|
  #     if supplies.include?("BBQ")
  #       holidays_with_BBQ<< holiday
  #     end
  #   end
  # end
#  holidays_with_BBQ
  holiday_hash.map do|season, holidays| #returns array of holidays
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
