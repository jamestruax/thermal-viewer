# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140208150148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geometries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polygons", force: true do |t|
    t.integer  "geometry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polygons", ["geometry_id"], name: "index_polygons_on_geometry_id", using: :btree

  create_table "rad_therm_models", force: true do |t|
    t.string   "name"
    t.integer  "geometry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rad_therm_models", ["geometry_id"], name: "index_rad_therm_models_on_geometry_id", using: :btree

  create_table "vertices", force: true do |t|
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.integer  "polygon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vertices", ["polygon_id"], name: "index_vertices_on_polygon_id", using: :btree

end
