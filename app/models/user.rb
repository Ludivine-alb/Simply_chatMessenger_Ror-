class User < ApplicationRecord

    validates_uniqueness_of :username

    def self.generate
        nouns = ['John', 'Table', 'Hell', 'Heaven', 'Highway', 'Kurt']
        adjectives = ['Pink', 'Silver', 'Joyful', 'Thrilled', 'Lucky', 'New', 'Great']
        number = rand.to_s[2..5]
        username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
        create(username: username)
    end

end
