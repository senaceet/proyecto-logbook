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

ActiveRecord::Schema.define(version: 0) do

  create_table "administrador", primary_key: ["fk_numero_documento", "fk_id_tipo_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "fk_numero_documento", limit: 20, null: false
    t.integer "fk_id_tipo_documento", null: false
  end

  create_table "aprendiz", primary_key: ["fk_id_tipo_documento", "fk_numero_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "fk_id_tipo_documento", null: false, auto_increment: true
    t.string "fk_numero_documento", limit: 20, null: false
  end

  create_table "aprendiz_ficha", primary_key: ["fk_id_tipo_documento", "fk_numero_documento", "fk_id_ficha"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "fk_id_tipo_documento", null: false
    t.string "fk_numero_documento", limit: 20, null: false
    t.integer "fk_id_ficha", null: false
    t.index ["fk_id_ficha"], name: "fk_id_ficha"
  end

  create_table "competencia", primary_key: ["id_competencia", "fk_id_programa", "fk_id_especialidad"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_competencia", null: false, auto_increment: true
    t.text "descripcion_competencia", null: false
    t.integer "fk_id_programa", null: false
    t.integer "fk_id_especialidad", null: false
    t.index ["fk_id_programa", "fk_id_especialidad"], name: "fk_id_programa"
  end

  create_table "especialidad", primary_key: "id_especialidad", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_especialidad", limit: 25, null: false
  end

  create_table "ficha", primary_key: ["id_ficha", "fk_id_grupo"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_ficha", null: false, auto_increment: true
    t.integer "numero_ficha", null: false
    t.string "estado_ficha", limit: 10, null: false
    t.string "fk_id_grupo", limit: 20, null: false
    t.integer "fk_id_programa", null: false
    t.integer "fk_id_especialidad", null: false
    t.integer "fk_id_jornada", null: false
    t.integer "fk_id_trimestre", null: false
    t.integer "fk_id_competencia", null: false
    t.index ["fk_id_competencia"], name: "fk_id_competencia"
    t.index ["fk_id_grupo"], name: "fk_id_grupo"
    t.index ["fk_id_jornada"], name: "fk_id_jornada"
    t.index ["fk_id_programa", "fk_id_especialidad"], name: "fk_id_programa"
    t.index ["fk_id_trimestre"], name: "fk_id_trimestre"
  end

  create_table "grupo", primary_key: "id_grupo", id: :string, limit: 5, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_grupo", limit: 10, null: false
  end

  create_table "instructor", primary_key: ["fk_id_tipo_documento", "fk_numero_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "fk_id_tipo_documento", null: false
    t.string "fk_numero_documento", limit: 20, null: false
    t.integer "fk_id_vinculacion", null: false
    t.integer "fk_id_especialidad", null: false
    t.index ["fk_id_especialidad"], name: "fk_id_especialidad"
    t.index ["fk_id_vinculacion"], name: "fk_id_vinculacion"
  end

  create_table "instructor_ficha", primary_key: ["fk_id_ficha", "fk_id_tipo_documento", "fk_numero_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "fk_id_ficha", null: false
    t.integer "fk_id_tipo_documento", null: false
    t.string "fk_numero_documento", limit: 20, null: false
    t.index ["fk_id_tipo_documento", "fk_numero_documento"], name: "fk_id_tipo_documento"
  end

  create_table "jornada", primary_key: "id_jornada", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_jornada", limit: 30, null: false
    t.string "horario_jornada", limit: 30, null: false
  end

  create_table "log_error", primary_key: "id_error", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_error", limit: 100, null: false
    t.date "fecha_error", null: false
    t.time "hora_error", precision: 6, null: false
  end

  create_table "opinion", primary_key: ["id_opinion", "fk_id_tipo_documento", "fk_numero_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_opinion", null: false, auto_increment: true
    t.timestamp "fecha_opinion", default: -> { "current_timestamp()" }, null: false
    t.string "titulo", limit: 250, null: false
    t.text "mensaje", null: false
    t.integer "estrellas", null: false
    t.integer "fk_id_tipo_documento", null: false
    t.string "fk_numero_documento", limit: 20, null: false
    t.index ["fk_id_tipo_documento", "fk_numero_documento"], name: "fk_id_tipo_documento"
  end

  create_table "programa", primary_key: ["id_programa", "fk_id_especialidad"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_programa", null: false, auto_increment: true
    t.integer "fk_id_especialidad", null: false
    t.string "siglas_programa", limit: 10
    t.string "nombre_programa", limit: 50, null: false
    t.index ["fk_id_especialidad"], name: "fk_id_especialidad"
  end

  create_table "resultado_aprendizaje", primary_key: ["id_resultado_aprendizaje", "fk_id_competencia", "fk_id_programa", "fk_id_especialidad"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id_resultado_aprendizaje", null: false, auto_increment: true
    t.integer "numero_resultado_de_aprendizaje", null: false
    t.text "descripcion_resultado_aprendizaje", null: false
    t.integer "fk_id_competencia", null: false
    t.integer "fk_id_programa", null: false
    t.integer "fk_id_especialidad", null: false
    t.index ["fk_id_competencia", "fk_id_programa", "fk_id_especialidad"], name: "fk_id_competencia"
  end

  create_table "rh", primary_key: "id_rh", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_rh", limit: 15, null: false
  end

  create_table "rol", primary_key: "id_rol", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_rol", limit: 25, null: false
  end

  create_table "servidor_correo", primary_key: "id_servidor", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_servidor", limit: 50, null: false
  end

  create_table "tipo_documento", primary_key: "id_tipo_documento", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "siglas", limit: 10, null: false
    t.string "nombre_tipo_documento", limit: 30, null: false
  end

  create_table "trimestre", primary_key: "id_trimestre", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "num_trimestre", null: false
  end

  create_table "usuario", primary_key: ["numero_documento", "fk_id_tipo_documento"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "numero_documento", limit: 20, null: false
    t.string "primer_nombre", limit: 30, null: false
    t.string "segundo_nombre", limit: 30
    t.string "primer_apellido", limit: 30, null: false
    t.string "segundo_apellido", limit: 30
    t.string "correo_electronico", limit: 100, null: false
    t.binary "foto", null: false
    t.integer "edad", null: false
    t.string "telefono_usuario", limit: 15, null: false
    t.string "contraseña", limit: 40, null: false
    t.integer "fk_id_tipo_documento", null: false
    t.integer "fk_id_rh", null: false
    t.integer "fk_id_rol", null: false
    t.index ["correo_electronico"], name: "correo_electronico", unique: true
    t.index ["fk_id_rh"], name: "fk_id_rh"
    t.index ["fk_id_rol"], name: "fk_id_rol"
    t.index ["fk_id_tipo_documento"], name: "fk_id_tipo_documento"
  end

  create_table "vinculacion", primary_key: "id_vinculacion", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_vinculacion", limit: 25, null: false
    t.integer "horas_trabajo", null: false
  end

  add_foreign_key "administrador", "usuario", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "administrador_ibfk_1"
  add_foreign_key "administrador", "usuario", column: "fk_numero_documento", primary_key: "numero_documento", name: "administrador_ibfk_1"
  add_foreign_key "aprendiz", "usuario", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "aprendiz_ibfk_1"
  add_foreign_key "aprendiz", "usuario", column: "fk_numero_documento", primary_key: "numero_documento", name: "aprendiz_ibfk_1"
  add_foreign_key "aprendiz_ficha", "aprendiz", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "aprendiz_ficha_ibfk_2"
  add_foreign_key "aprendiz_ficha", "aprendiz", column: "fk_numero_documento", primary_key: "fk_numero_documento", name: "aprendiz_ficha_ibfk_2"
  add_foreign_key "aprendiz_ficha", "ficha", column: "fk_id_ficha", primary_key: "id_ficha", name: "aprendiz_ficha_ibfk_1"
  add_foreign_key "competencia", "programa", column: "fk_id_especialidad", primary_key: "fk_id_especialidad", name: "competencia_ibfk_1", on_update: :cascade
  add_foreign_key "competencia", "programa", column: "fk_id_programa", primary_key: "id_programa", name: "competencia_ibfk_1", on_update: :cascade
  add_foreign_key "ficha", "competencia", column: "fk_id_competencia", primary_key: "id_competencia", name: "ficha_ibfk_5"
  add_foreign_key "ficha", "grupo", column: "fk_id_grupo", primary_key: "id_grupo", name: "ficha_ibfk_1"
  add_foreign_key "ficha", "jornada", column: "fk_id_jornada", primary_key: "id_jornada", name: "ficha_ibfk_3"
  add_foreign_key "ficha", "programa", column: "fk_id_especialidad", primary_key: "fk_id_especialidad", name: "ficha_ibfk_2"
  add_foreign_key "ficha", "programa", column: "fk_id_programa", primary_key: "id_programa", name: "ficha_ibfk_2"
  add_foreign_key "ficha", "trimestre", column: "fk_id_trimestre", primary_key: "id_trimestre", name: "ficha_ibfk_4"
  add_foreign_key "instructor", "especialidad", column: "fk_id_especialidad", primary_key: "id_especialidad", name: "instructor_ibfk_1", on_update: :cascade
  add_foreign_key "instructor", "usuario", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "instructor_ibfk_3", on_update: :cascade
  add_foreign_key "instructor", "usuario", column: "fk_numero_documento", primary_key: "numero_documento", name: "instructor_ibfk_3", on_update: :cascade
  add_foreign_key "instructor", "vinculacion", column: "fk_id_vinculacion", primary_key: "id_vinculacion", name: "instructor_ibfk_2", on_update: :cascade
  add_foreign_key "instructor_ficha", "ficha", column: "fk_id_ficha", primary_key: "id_ficha", name: "instructor_ficha_ibfk_2"
  add_foreign_key "instructor_ficha", "instructor", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "instructor_ficha_ibfk_1", on_update: :cascade
  add_foreign_key "instructor_ficha", "instructor", column: "fk_numero_documento", primary_key: "fk_numero_documento", name: "instructor_ficha_ibfk_1", on_update: :cascade
  add_foreign_key "opinion", "usuario", column: "fk_id_tipo_documento", primary_key: "fk_id_tipo_documento", name: "opinion_ibfk_1"
  add_foreign_key "opinion", "usuario", column: "fk_numero_documento", primary_key: "numero_documento", name: "opinion_ibfk_1"
  add_foreign_key "programa", "especialidad", column: "fk_id_especialidad", primary_key: "id_especialidad", name: "programa_ibfk_1", on_update: :cascade
  add_foreign_key "resultado_aprendizaje", "competencia", column: "fk_id_competencia", primary_key: "id_competencia", name: "resultado_aprendizaje_ibfk_1"
  add_foreign_key "resultado_aprendizaje", "competencia", column: "fk_id_especialidad", primary_key: "fk_id_especialidad", name: "resultado_aprendizaje_ibfk_1"
  add_foreign_key "resultado_aprendizaje", "competencia", column: "fk_id_programa", primary_key: "fk_id_programa", name: "resultado_aprendizaje_ibfk_1"
  add_foreign_key "usuario", "rh", column: "fk_id_rh", primary_key: "id_rh", name: "usuario_ibfk_1", on_update: :cascade
  add_foreign_key "usuario", "rol", column: "fk_id_rol", primary_key: "id_rol", name: "usuario_ibfk_2", on_update: :cascade
  add_foreign_key "usuario", "tipo_documento", column: "fk_id_tipo_documento", primary_key: "id_tipo_documento", name: "usuario_ibfk_3", on_update: :cascade
end
