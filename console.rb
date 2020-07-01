require('pry-byebug')
require_relative('models/artist')
require_relative('models/album')

    
    Album.delete_all()
    Artist.delete_all()

    artist1 = Artist.new({ 'name' => 'Beyonce' })
    artist1.save()

    artist2 = Artist.new({ 'name' => 'The Beatles' })
    artist2.save()

    artist3 = Artist.new({ 'name' => 'Paul Simon' })
    artist3.save()

    album1 = Album.new({
        'title' => 'Lemonade',
        'genre' => 'R&B',
        'artist_id' => artist1.id 
    })
    album1.save()




binding.pry
nil