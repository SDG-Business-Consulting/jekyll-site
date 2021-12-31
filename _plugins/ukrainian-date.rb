#!/usr/bin/env ruby

# Author of this script: lifeisfoo (https://stackoverflow.com/a/32331857/2040520)

module Jekyll
    module CustomDates
        MONTHS = {
          "01" => "січня",
          "02" => "лютого",
          "03" => "березня",
          "04" => "квітня",
          "05" => "травня",
          "06" => "червня",
          "07" => "липня",
          "08" => "серпня",
          "09" => "вересня",
          "10" => "жовтня",
          "11" => "листопада",
          "12" => "грудня"
        }

        def ukrainianDate(date)
            day = time(date).strftime("%e")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end
    end
end

Liquid::Template.register_filter(Jekyll::CustomDates)
