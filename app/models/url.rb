class Url < ApplicationRecord
	validates_presence_of :long_url
    validates_format_of :long_url, :with => URI::regexp(['http', 'https']),
    :message => "Only letters allowed"
end
