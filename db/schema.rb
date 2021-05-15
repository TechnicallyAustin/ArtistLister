# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_12_184740) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "song"
    t.integer "song_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_artists_on_song_id"
  end

  create_table "playlist_songs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "playlist_id"
    t.text "song_name"
    t.text "song_artist_name"
    t.integer "song_rating"
    t.index ["playlist_id"], name: "index_playlist_songs_on_playlist_id"
    t.index ["user_id"], name: "index_playlist_songs_on_user_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "song"
    t.text "artist"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist_name"
    t.integer "rating"
    t.integer "playlist_id"
    t.integer "artist_id"
    t.integer "playlist_song_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    t.index ["playlist_id"], name: "index_songs_on_playlist_id"
    t.index ["playlist_song_id"], name: "index_songs_on_playlist_song_id"
  end

  create_table "user_playlists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "user_id"
    t.string "songs"
    t.index ["user_id"], name: "index_user_playlists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
  end

end
