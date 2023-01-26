# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_126_093_754) do
  create_table 'comments', force: :cascade do |t|
    t.string 'authorId'
    t.text 'postId'
    t.text 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'comment_id', null: false
    t.index ['comment_id'], name: 'index_comments_on_comment_id'
  end

  create_table 'likes', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'authorId'
    t.string 'title'
    t.text 'text'
    t.integer 'comments_counter'
    t.integer 'like_counter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'comment_id', null: false
    t.integer 'like_id', null: false
    t.index ['comment_id'], name: 'index_posts_on_comment_id'
    t.index ['like_id'], name: 'index_posts_on_like_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.text 'photo'
    t.text 'bio'
    t.integer 'post_counter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'users_id', null: false
    t.integer 'like_id', null: false
    t.index ['like_id'], name: 'index_users_on_like_id'
    t.index ['users_id'], name: 'index_users_on_users_id'
  end

  add_foreign_key 'comments', 'comments'
  add_foreign_key 'posts', 'comments'
  add_foreign_key 'posts', 'likes'
  add_foreign_key 'users', 'likes'
  add_foreign_key 'users', 'users', column: 'users_id'
end
