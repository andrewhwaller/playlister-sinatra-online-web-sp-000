class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, :through => :songs

  def slugify
    slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    slug
  end
end
