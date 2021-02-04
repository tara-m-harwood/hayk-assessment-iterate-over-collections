require "pry"

class Company
    attr_accessor:name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end

end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

# for my first trick, I will transform this mere collection of objects
# into a fabulous array of human-readable strings!
# .map will iterate over my companies, outputting an array of formatted strings
# this will also serve as a helper method later ... stay tuned!

def list_strings(companies)
    companies.map { | company | "#{company.name} - #{company.size}" }
end

p list_strings(companies)


# next, with a wave of my Ruby wand, I reduce this collection into the sum of its sizes!
# using .reduce this way is like calculating a running total
# I tell .reduce to start the count at zero and then start iterating
# each time .reduce sees a new company, it adds the size to the running total
# when it is done it returns a single number ... like magic! 

def get_summed(companies)
  companies.reduce(0) { |sum, company| sum + company.size }
end

p get_summed(companies)


# unless your company size is over 100 you aren't cool enough to make my VIP list
# I program this into the block param and ... voila!
# .filter returns a new, more exclusive collection of objects ... but ugly, as objects are
# my magic helper method 'list_strings' helps them look their best!

def companies_over_100(companies)
     over_100 = companies.filter { | company | company.size > 100 }
     list_strings(over_100)
end

p companies_over_100(companies)


# Beta?  Is there a Beta in the audience?  Quick ...  we have to .find it!
# I program Beta's description into the block and let .find play the bloodhound
# Once I .find the Beta Object, I return just the name, for readibility

def finding_beta(companies)
    beta = companies.find { | company | company.name == "Beta" }
    beta.name
end

p finding_beta(companies)


# Who is the biggest of them all? My lovely assistant .max knows!
# .max performs a running comparison using its fancy 'spaceship operator'
# it iterates through the collection, comparing the all sizes to each other to find the largest
# .max returns an Object, but I'll just output the name, bc strings are sexy

def get_biggest(companies)
    max = companies.max { | a, b | a.size <=> b.size }
    max.name
end

p get_biggest(companies)

# for my final act, I will sort these companies from big to small! (gasp!)
# .sort is the cousin of .max, but .sort returns an array instead of a single Object
# .sort uses that same spaceship comparison, but this time we have it flipped around
# because I want largest to smallest, I am using 'b.size <=> a.size'
# if I wanted to sort the other direction, I'd use 'a.size <-> b.size'
# This is not very intutive ... which is why everyone will know I am a gret magician!
# .sort returns the re-ordered Object collection, but where is the showmanship I ask you?
# I work a bit of the ol' helper method razzle-dazzle and Alakazam!  Lovely strings!
# Now time for the thunderous applause and international acclaim!

def get_sorted(companies)
     sorted = companies.sort { | a, b | b.size <=> a.size }
     list_strings(sorted)
end        

p get_sorted(companies)

# I take my bow!

# final note: I am intentionally using p instead of puts, 
# because I want my arrays to look like arrays instead of all on separate lines
# puts may be prettier, but p is more informative when troubleshooting ... my $.02!
