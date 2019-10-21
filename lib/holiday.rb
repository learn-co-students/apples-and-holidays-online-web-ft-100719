holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :honnica = ["candles","gifts"]
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ","flags"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
      array = holiday.to_s.split("_")
      final_holiday = []
        array.each do |x|
          final_holiday << x.capitalize!
        end
      holiday = final_holiday.join(" ")

      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"

    end
  end

