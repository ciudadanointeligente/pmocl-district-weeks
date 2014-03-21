require 'rubygems'
require 'scraperwiki'
# require 'httparty'
# require 'open-uri'
require 'json'
# require 'i18n'

# --------------------
# scrapable_classes.rb
# --------------------

module RestfulApiMethods

  def format info
    info
  end

  def put record
  end

  def post record
  end
end

class GenericStorage
  include RestfulApiMethods

  def save record
    post record
  end

  def post record
    if ((ScraperWiki.select("* from data where `id`='#{record['id']}'").empty?) rescue true)
      # Convert the array record['organizations'] to a string (by converting to json)
      # record['organizations'] = JSON.dump(record['organizations'])
      ScraperWiki.save_sqlite(['id'], record)
      puts "Adds new record " + record['id']
    else
      puts "Skipping already saved record " + record['id']
    end
  end
end

# ------------------------
# district_weeks_runner.rb
# ------------------------

if !(defined? Test::Unit::TestCase)
  # LowChamberDistrictWeeks.new.process
  # HighChamberDistrictWeeks.new.process

  # source: http://www.camara.cl/camara/media/docs/calendario_2014.pdf
  record = Hash.new
  record = {"id"=>"C001", "title"=>"Semana distrital", "start"=>"2014-03-24", "end"=>"2014-03-28", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C002", "title"=>"Semana distrital", "start"=>"2014-04-28", "end"=>"2014-05-02", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C003", "title"=>"Semana distrital", "start"=>"2014-05-26", "end"=>"2014-05-30", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C004", "title"=>"Semana distrital", "start"=>"2014-06-23", "end"=>"2014-06-27", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C005", "title"=>"Semana distrital", "start"=>"2014-07-28", "end"=>"2014-08-01", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C006", "title"=>"Semana distrital", "start"=>"2014-08-25", "end"=>"2014-08-29", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C007", "title"=>"Semana distrital", "start"=>"2014-09-15", "end"=>"2014-09-19", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C008", "title"=>"Semana distrital", "start"=>"2014-10-27", "end"=>"2014-10-31", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C009", "title"=>"Semana distrital", "start"=>"2014-12-01", "end"=>"2014-12-05", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C010", "title"=>"Semana distrital", "start"=>"2014-12-22", "end"=>"2015-01-02", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)

  record = {}
  record = {"id"=>"C011", "title"=>"Semana distrital", "start"=>"2015-01-26", "end"=>"2015-01-30", "chamber"=>"C.Diputados", "url"=>"http://www.camara.cl/camara/distritos.aspx", "date_scraped"=>"2014-03-21"}
  ScraperWiki.save_sqlite(['id'], record)
end
