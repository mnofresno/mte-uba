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

ActiveRecord::Schema.define(version: 20160912050739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chofers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "radio"
    t.integer  "taller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chofers", ["taller_id"], name: "index_chofers_on_taller_id", using: :btree

  create_table "direccions", force: :cascade do |t|
    t.string   "calle"
    t.integer  "altura"
    t.integer  "direccionable_id"
    t.string   "direccionable_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "direccions", ["direccionable_type", "direccionable_id"], name: "index_direccions_on_direccionable_type_and_direccionable_id", using: :btree

  create_table "memberships", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "taller_id"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "current"
  end

  add_index "memberships", ["role_id"], name: "index_memberships_on_role_id", using: :btree
  add_index "memberships", ["taller_id"], name: "index_memberships_on_taller_id", using: :btree
  add_index "memberships", ["usuario_id"], name: "index_memberships_on_usuario_id", using: :btree

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "taller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "proveedors", ["taller_id"], name: "index_proveedors_on_taller_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tallers", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
  end

  add_index "tallers", ["owner_id"], name: "index_tallers_on_owner_id", using: :btree

  create_table "unidads", force: :cascade do |t|
    t.string   "patente"
    t.string   "marca"
    t.integer  "año"
    t.boolean  "fueraDeServicio"
    t.integer  "taller_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "unidads", ["taller_id"], name: "index_unidads_on_taller_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "usuarios", ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true, using: :btree
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["invitation_token"], name: "index_usuarios_on_invitation_token", unique: true, using: :btree
  add_index "usuarios", ["invitations_count"], name: "index_usuarios_on_invitations_count", using: :btree
  add_index "usuarios", ["invited_by_id"], name: "index_usuarios_on_invited_by_id", using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "chofers", "tallers"
  add_foreign_key "memberships", "roles"
  add_foreign_key "memberships", "tallers"
  add_foreign_key "memberships", "usuarios"
  add_foreign_key "proveedors", "tallers"
  add_foreign_key "unidads", "tallers"
end