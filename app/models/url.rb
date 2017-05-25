class Url < ApplicationRecord
	validates_presence_of :long_url
    validates_format_of :long_url, :with => URI::regexp(['http', 'https']),
    :message => "Only letters allowed"

	def shorten
    	short_arr = Array.new(6)
    	alphabet_arr = ('a'..'z').to_a + ('A'..'Z').to_a
    	short_arr.map!{|i| i = alphabet_arr.sample}
    	self.short_url = short_arr.unshift(rand(10).to_s).join
	end

end
