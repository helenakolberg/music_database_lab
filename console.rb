require('pry-byebug')
require_relative('models/artist')

    Artist.delete_all()

    artist1 = Artist.new({ 'name' => 'Beyonce' })
    artist1.save()

    artist2 = Artist.new({ 'name' => 'The Beatles' })
    artist2.save()

    artist3 = Artist.new({ 'name' => 'Paul Simon' })
    artist3.save()




binding.pry
nil