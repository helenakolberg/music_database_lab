require_relative('../db/sql_runner')
require_relative('artist')

class Album

    attr_accessor :title, :genre, :artist_id
    attr_reader :id

    def initialize(options)
        @id = options['id'] if options['id']
        @title = options['title']
        @genre = options['genre']
        @artist_id = options['artist_id'].to_i()
    end

    def save()
        sql = "INSERT INTO albums (title, genre, artist_id)
        VALUES ($1, $2, $3) RETURNING id"
        values = [@title, @genre, @artist_id]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i()
    end

    def self.delete_all()
        sql = "DELETE FROM albums"
        SqlRunner.run(sql)
    end

    def self.all()
        sql = "SELECT * FROM albums"
        albums = SqlRunner.run(sql)
        return albums.map { |album| Album.new(album) }
    end

    def artist()
        sql = "SELECT * FROM artists WHERE id = $1"
        values = [@artist_id]
        result = SqlRunner.run(sql, values)
        artist_data = result[0]
        artist = Artist.new(artist_data)
        return artist
    end

end