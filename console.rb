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

    album2 = Album.new({
        'title' => 'Abbey Road',
        'genre' => 'Rock',
        'artist_id' => artist2.id
    })
    album2.save()

    album3 = Album.new({
        'title' => 'Graceland',
        'genre' => 'Pop',
        'artist_id' => artist3.id
    })
    album3.save()

    album4 = Album.new({
        'title' => 'Hearts and Bones',
        'genre' => 'Pop',
        'artist_id' => artist3.id
    })
    album4.save()

    album1.title = 'I Am... Sasha Fierce'
    album1.update()


binding.pry
nil