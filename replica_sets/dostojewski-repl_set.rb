#! /usr/bin/env ruby

require 'bundler/setup'
require 'mongo'

logger = Mongo::Logger.logger # get the wrapped logger

# http://ruby-doc.org/stdlib/libdoc/logger/rdoc/index.html
# logger levels: DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN
logger_level = {
  debug: Logger::DEBUG,
  info: Logger::INFO,
  warn: Logger::WARN,
  error: Logger::ERROR,
  fatal: Logger::FATAL,
  unknown: Logger::UNKNOWN
}

# set default level to Logger::INFO
Mongo::Logger.level = logger_level[ARGV[0].to_s.downcase.to_sym] || Logger::INFO

# English stopwords from Tracker, http://projects.gnome.org/tracker/
# GitHub: git clone git://git.gnome.org/tracker ; cd data/languages/

stop = IO.read('datasets/stopwords.en').split("\n")
logger.info "liczba wczytanych stopwords: #{stop.length}"

# Gutenberg

# uri = 'http://www.gutenberg.org/cache/epub/2638/pg2638.txt' (MS-DOS encoded)
# lines ending should be converted to \n

filename = 'datasets/Dostoevsky_Feodor-The_Idiot.txt'
data = IO.readlines(filename, "\n")
lines = data.map do |para|
  para.gsub!(/\s+/, ' ').strip
end
# delete empty strings and strip legal info (preamble and postable)
lines.delete('')
book = lines[12..-56]

logger.info "liczba wczytanych akapitów: #{book.size}"

# updated to MongoDB Driver 2.5.0

# client = Mongo::Client.new('mongodb://localhost:27001/test?replicaSet=carbon')
client = Mongo::Client.new(
  ['127.0.0.1:27001', '127.0.0.1:27002', '127.0.0.1:27003'],
  replica_set: :carbon,
  database: 'test'
)

coll = client[:dostojewski]
coll.drop

book.each_with_index do |para, n|
  words = para
          .gsub(/[!?;:"'().,\[\]*]/, '')
          .gsub('--', ' ')
          .tr('_', ' ')
          .gsub('\ufeff', '') # remove zero width no-break space in the title
          .downcase.split(/\s+/)
  words.each do |word|
    if stop.include?(word)
      logger.debug "skipped stopword: #{word}"
    else
      next if word.empty?
      letters = word.split('').sort.uniq
      coll.insert_one(
        word: word,
        para: n,
        letters: letters
      )
      logger.debug "inserted: #{word}"
    end
  end
end

logger.info 'Done!'
logger.info "\t  database: test"
logger.info "\tcollection: dostojewski"
logger.info "\t      size: #{coll.find.count}"
