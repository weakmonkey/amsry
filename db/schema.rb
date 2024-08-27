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

ActiveRecord::Schema[7.0].define(version: 2024_08_27_214140) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", comment: "注文情報", force: :cascade do |t|
    t.string "name", null: false, comment: "お名前"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false, comment: "メールアドレス"
    t.string "telephone", null: false, comment: "電話番号"
    t.string "delivery_address", null: false, comment: "お届け先住所"
  end

end
