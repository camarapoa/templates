# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "acessos", :force => true do |t|
    t.integer "pessoa_id", :null => false
    t.integer "count",     :null => false
  end

  create_table "acoes", :force => true do |t|
    t.string "nome",       :limit => 50, :null => false
    t.string "controller", :limit => 50
    t.string "titulo",     :limit => 50
  end

  create_table "acoes_sistemas", :id => false, :force => true do |t|
    t.integer "acao_id",    :null => false
    t.integer "sistema_id", :null => false
  end

  create_table "afastamentos", :force => true do |t|
    t.string "nome",      :limit => 200
    t.string "codigo",    :limit => 100
    t.string "tipo",      :limit => 100
    t.text   "descricao"
  end

  create_table "afastamentos_funcionarios", :force => true do |t|
    t.integer  "funcionario_id", :null => false
    t.integer  "afastamento_id", :null => false
    t.datetime "data_inicio",    :null => false
    t.datetime "data_termino"
    t.text     "observacao"
    t.datetime "created_on"
    t.integer  "created_by"
    t.integer  "efetividade_id"
  end

  create_table "agenda_locais", :force => true do |t|
    t.string "nome", :limit => 1000, :null => false
  end

  create_table "agenda_tipo_eventos", :force => true do |t|
    t.string "nome", :limit => 1000, :null => false
  end

  create_table "agendas", :force => true do |t|
    t.integer  "tipo_evento_id",                    :null => false
    t.string   "descricao_evento",  :limit => 2000, :null => false
    t.datetime "data_inicio",                       :null => false
    t.datetime "data_termino",                      :null => false
    t.string   "horario_inicio",    :limit => 10,   :null => false
    t.string   "horario_termino",   :limit => 10,   :null => false
    t.integer  "local_id",                          :null => false
    t.string   "local_complemento", :limit => 1000
    t.string   "proponente",        :limit => 100
    t.string   "orador",            :limit => 100
    t.string   "doc_autorizacao",   :limit => 100
    t.boolean  "dominio",                           :null => false
  end

  create_table "anuncios", :force => true do |t|
    t.string   "titulo",    :limit => 510,                  :null => false
    t.text     "descricao"
    t.datetime "data",                                      :null => false
    t.string   "ativo",     :limit => 2,   :default => "1"
  end

  create_table "atendimentos", :force => true do |t|
    t.integer  "atendente_id"
    t.integer  "solicitacao_id"
    t.datetime "data_termino"
    t.integer  "avaliacao"
    t.string   "comentarios_avaliacao", :limit => 1000
    t.string   "forma_atendimento",     :limit => 100
    t.string   "solucao",               :limit => 8000
    t.integer  "resp_cad",                              :null => false
    t.datetime "created_on",                            :null => false
    t.integer  "resp_alt",                              :null => false
    t.datetime "updated_on",                            :null => false
  end

  create_table "atos", :force => true do |t|
    t.integer  "tipo_ato_id"
    t.integer  "cargo_id"
    t.integer  "mandato_id"
    t.datetime "data"
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.string   "processo",         :limit => 100
    t.string   "tipo_afastamento", :limit => 100
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "atos_pessoas_primarias", :force => true do |t|
    t.integer "ato_id"
    t.integer "pessoa_id"
  end

  create_table "atos_pessoas_secundarias", :force => true do |t|
    t.integer "ato_id"
    t.integer "pessoa_id"
  end

  create_table "avisos", :force => true do |t|
    t.text     "texto",                                          :null => false
    t.datetime "data",                                           :null => false
    t.integer  "setor_id",                                       :null => false
    t.integer  "pessoa_id",                                      :null => false
    t.string   "status",     :limit => 100, :default => "ativo", :null => false
    t.datetime "created_at",                                     :null => false
    t.integer  "updated_by"
    t.datetime "updated_at"
  end

  create_table "bases_legais", :force => true do |t|
    t.text     "descricao"
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "bens_origem_2008", :force => true do |t|
    t.string   "nm_tipobem",   :limit => 200
    t.string   "nm_loc",       :limit => 100
    t.integer  "cd_controle",                 :null => false
    t.integer  "cd_bem"
    t.integer  "cd_tipobem"
    t.integer  "cd_mrcbem"
    t.string   "nr_serbem",    :limit => 100
    t.integer  "cd_propbem"
    t.integer  "cd_grprede"
    t.string   "nm_rede",      :limit => 100
    t.string   "ds_pavbem",    :limit => 100
    t.string   "nr_caborede",  :limit => 20
    t.string   "ds_tipohub",   :limit => 100
    t.string   "nm_localhub",  :limit => 100
    t.integer  "nr_sala"
    t.datetime "cd_cadbem"
    t.string   "ds_obsbem",    :limit => 510
    t.string   "cd_compuserv", :limit => 100
  end

  create_table "cargos", :force => true do |t|
    t.string  "nome",              :limit => 100
    t.string  "categoria",         :limit => 100
    t.integer "quantidade"
    t.string  "codigo",            :limit => 100
    t.string  "nivel",             :limit => 100
    t.integer "pessoalservico_id"
    t.string  "opcional",          :limit => 2
    t.string  "chefe_reparticao",  :limit => 2
    t.string  "chefe_area",        :limit => 2,   :default => "0", :null => false
  end

  create_table "cargosfuncionarios", :force => true do |t|
    t.integer  "pessoa_id"
    t.integer  "cargo_id"
    t.integer  "setor_id"
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.text     "observacoes"
  end

  create_table "categorias_formularios", :force => true do |t|
    t.string "nome",      :limit => 100, :null => false
    t.text   "descricao"
  end

  create_table "ccsfuncionarios", :force => true do |t|
    t.integer  "pessoa_id",    :null => false
    t.integer  "cargo_id",     :null => false
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.integer  "setor_id"
    t.text     "observacao"
  end

  create_table "ceps", :force => true do |t|
    t.string   "cep",           :limit => 10
    t.string   "tipologia",     :limit => 20
    t.string   "logradouro",    :limit => 60
    t.string   "bairro_inicio", :limit => 70
    t.string   "bairro_fim",    :limit => 70
    t.string   "cidade",        :limit => 100
    t.string   "uf",            :limit => 2
    t.datetime "created_at"
    t.integer  "created_by"
    t.datetime "updated_at"
    t.integer  "updated_by"
  end

  create_table "chamados", :force => true do |t|
    t.integer  "empresa_id",                              :null => false
    t.datetime "data_abertura"
    t.text     "problema"
    t.datetime "data_saida_equipamento"
    t.datetime "data_retorno_equipamento"
    t.string   "status",                   :limit => 100
    t.datetime "data_encerramento"
    t.text     "solucao"
    t.text     "observacao"
    t.string   "numero_chamado_empresa",   :limit => 100
    t.integer  "solicitacao_id",                          :null => false
    t.integer  "resp_cad"
    t.string   "numero_patrimonio",        :limit => 100
  end

  create_table "codigos", :id => false, :force => true do |t|
    t.integer "ultimo_codigo_movimentacao"
  end

  create_table "contatos_sms", :id => false, :force => true do |t|
    t.integer "telefone_id",  :null => false
    t.integer "grupo_sms_id", :null => false
  end

  create_table "contratos_estagios", :force => true do |t|
    t.string   "numero_contrato",       :limit => 100
    t.string   "remunerado",            :limit => 6
    t.integer  "estagiario_id"
    t.integer  "setor_id"
    t.datetime "inicio"
    t.datetime "fim"
    t.integer  "supervisor_id"
    t.string   "renovado",              :limit => 2
    t.string   "finalizado",            :limit => 2
    t.string   "status",                :limit => 100
    t.integer  "duracao_contrato"
    t.string   "turno",                 :limit => 60
    t.integer  "convenio_id"
    t.integer  "instituicao_ensino_id"
    t.integer  "curso_id"
    t.integer  "created_by"
    t.datetime "created_at"
    t.integer  "updated_by"
    t.datetime "updated_at"
    t.text     "observacao"
  end

  create_table "convenios", :force => true do |t|
    t.string   "nome",         :limit => 200
    t.string   "sigla",        :limit => 40
    t.string   "nome_contato", :limit => 100
    t.string   "telefone",     :limit => 100
    t.string   "observacoes",  :limit => 1000
    t.integer  "created_by"
    t.datetime "created_at"
    t.integer  "updated_by"
    t.datetime "updated_at"
  end

  create_table "cursos", :force => true do |t|
    t.string "nome",      :limit => 510, :null => false
    t.text   "descricao"
    t.string "status",    :limit => 40,  :null => false
  end

  create_table "cursos_ensino", :force => true do |t|
    t.string   "nome",                  :limit => 80
    t.string   "nivel",                 :limit => 100
    t.string   "descricao",             :limit => 1000
    t.integer  "duracao"
    t.integer  "instituicao_ensino_id"
    t.integer  "created_by"
    t.datetime "created_at"
    t.integer  "updated_by"
    t.datetime "updated_at"
  end

  create_table "dacmpacedencias", :force => true do |t|
    t.integer  "pessoa_id",       :null => false
    t.integer  "orgaoexterno_id", :null => false
    t.datetime "data_inicio",     :null => false
    t.datetime "data_fim"
    t.text     "observacoes"
  end

  create_table "demandas_ouvidoria", :force => true do |t|
    t.string   "nome",            :limit => 200
    t.string   "telefone",        :limit => 100
    t.string   "email",           :limit => 100
    t.string   "endereco",        :limit => 400
    t.text     "demanda",                                            :null => false
    t.datetime "created_on",                                         :null => false
    t.integer  "destinatario_id"
    t.string   "status",          :limit => 50,  :default => "nova", :null => false
  end

  create_table "demandas_ouvidoria_atendimentos", :force => true do |t|
    t.integer  "demandas_ouvidoria_id", :null => false
    t.text     "texto",                 :null => false
    t.datetime "created_on"
  end

  create_table "disponibilidades", :force => true do |t|
    t.integer "reparticao_id"
    t.integer "interessado_id"
    t.integer "disponibilizado_id"
    t.text    "justificativa"
    t.string  "created_on",         :limit => 100
  end

  create_table "documentos", :force => true do |t|
    t.string  "type"
    t.string  "filename"
    t.integer "size"
    t.string  "content_type"
    t.integer "documentable_id"
    t.string  "documentable_type"
  end

  create_table "efetividades", :force => true do |t|
    t.integer  "funcionario_id",                        :null => false
    t.integer  "setor_id",                              :null => false
    t.integer  "mes"
    t.integer  "ano"
    t.string   "status",                 :limit => 1
    t.datetime "created_on"
    t.integer  "created_by"
    t.string   "finalizada",             :limit => 1
    t.string   "observacao",             :limit => 510
    t.datetime "updated_on"
    t.integer  "efetividade_enviada_id"
    t.integer  "cumprimento"
    t.integer  "pontualidade"
    t.integer  "assiduidade"
    t.integer  "afastamento"
    t.integer  "punicao"
  end

  create_table "efetividades_enviadas", :force => true do |t|
    t.integer  "setor_id",   :null => false
    t.integer  "created_by", :null => false
    t.datetime "created_on", :null => false
    t.integer  "mes",        :null => false
    t.integer  "ano",        :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string "nome", :limit => 100, :null => false
  end

  create_table "enderecos", :force => true do |t|
    t.string   "cidade",     :limit => 100, :null => false
    t.string   "logradouro", :limit => 100
    t.string   "bairro",     :limit => 50
    t.string   "cep",        :limit => 50
    t.string   "uf",         :limit => 2
    t.integer  "resp_cad",                  :null => false
    t.datetime "created_on",                :null => false
    t.integer  "resp_alt",                  :null => false
    t.datetime "updated_on",                :null => false
  end

  create_table "equipamentos", :force => true do |t|
    t.integer  "setor_id"
    t.string   "descricao",      :limit => 1000
    t.string   "nro_serie",      :limit => 100
    t.integer  "nro_patrimonio"
    t.string   "nome_rede",      :limit => 100
    t.string   "nro_cabo",       :limit => 20
    t.string   "tipo_hub",       :limit => 40
    t.string   "nome_localhub",  :limit => 30
    t.datetime "baixa"
    t.string   "motivo_baixa",   :limit => 1000
    t.integer  "resp_cad"
    t.string   "created_on",     :limit => 100,  :null => false
    t.integer  "resp_alt"
    t.string   "updated_on",     :limit => 100,  :null => false
    t.integer  "modelo_id"
    t.integer  "fabricante_id"
    t.integer  "tipo_id"
    t.string   "proprietario",   :limit => 50
    t.string   "ip",             :limit => 50
    t.string   "observacao",     :limit => 2000
  end

  create_table "eventos", :force => true do |t|
    t.datetime "data_inicio",                      :null => false
    t.string   "titulo",            :limit => 100, :null => false
    t.text     "descricao"
    t.datetime "data_termino"
    t.string   "horario_inicio",    :limit => 100
    t.string   "horario_termino",   :limit => 100
    t.string   "tipo",              :limit => 100
    t.string   "inscricao",         :limit => 2
    t.integer  "numero_vagas"
    t.string   "status",            :limit => 100
    t.text     "local"
    t.integer  "responsavel_id"
    t.string   "created_on",        :limit => 100
    t.string   "horarios_variados", :limit => 2
  end

  create_table "eventosinscricoes", :force => true do |t|
    t.integer "pessoa_id"
    t.integer "turma_id"
    t.string  "data",      :limit => 100
    t.string  "ip",        :limit => 100
  end

  create_table "fabricantes_equipamento", :force => true do |t|
    t.string "nome", :limit => 500, :null => false
  end

  create_table "fgsfuncionarios", :force => true do |t|
    t.integer  "pessoa_id",                   :null => false
    t.integer  "funcao_id",                   :null => false
    t.string   "descricao",    :limit => 510
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.integer  "setor_id"
  end

  create_table "formularios", :force => true do |t|
    t.string  "nome",           :limit => 500, :null => false
    t.string  "modelo",         :limit => 100
    t.string  "type",           :limit => 100
    t.string  "filename",       :limit => 500
    t.integer "size"
    t.string  "content_type",   :limit => 100
    t.text    "palavras_chave"
    t.text    "descricao"
  end

  create_table "formularios_categorizados", :force => true do |t|
    t.integer "formulario_id", :null => false
    t.integer "categoria_id",  :null => false
  end

  create_table "formularios_sugestoes", :force => true do |t|
    t.text     "sugestao",                  :null => false
    t.string   "ip",         :limit => 100
    t.datetime "created_on"
  end

  create_table "funcoes", :force => true do |t|
    t.integer "nivel",                                             :null => false
    t.string  "nome",             :limit => 1000,                  :null => false
    t.text    "descricao"
    t.text    "atribuicoes"
    t.string  "tipo",             :limit => 200
    t.string  "chefe_reparticao", :limit => 2,                     :null => false
    t.string  "codigo",           :limit => 30
    t.string  "categoria",        :limit => 100
    t.integer "quantidade"
    t.string  "opcional",         :limit => 2
    t.string  "chefia_area",      :limit => 2,    :default => "0", :null => false
    t.string  "chefe_area",       :limit => 2,    :default => "0", :null => false
  end

  create_table "gits", :force => true do |t|
    t.integer "pessoa_id",                    :null => false
    t.integer "created_by",                   :null => false
    t.integer "mes",                          :null => false
    t.integer "ano",                          :null => false
    t.integer "cumprimento",  :default => 65
    t.integer "assiduidade",  :default => 10
    t.integer "pontualidade", :default => 10
    t.integer "afastamento",  :default => 10
    t.integer "punicao",      :default => 5
  end

  create_table "grupoacessos", :force => true do |t|
    t.string  "nome",       :limit => 50,  :null => false
    t.integer "resp_cad"
    t.string  "created_on", :limit => 50
    t.integer "resp_alt"
    t.string  "updated_on", :limit => 50
    t.string  "mascara",    :limit => 100
  end

  create_table "grupoacessos_lotacoestemporarias", :id => false, :force => true do |t|
    t.integer "lotacoestemporaria_id", :null => false
    t.integer "grupoacesso_id",        :null => false
  end

  create_table "grupoacessos_sistemas", :id => false, :force => true do |t|
    t.integer "grupoacesso_id", :null => false
    t.integer "sistema_id",     :null => false
  end

  create_table "grupos_sms", :force => true do |t|
    t.string   "nome",       :limit => 100, :null => false
    t.integer  "pessoa_id",                 :null => false
    t.datetime "created_at",                :null => false
  end

  create_table "impressoes_realizadas", :force => true do |t|
    t.integer  "equipamento_id", :null => false
    t.datetime "created_on",     :null => false
    t.integer  "nro_impressoes", :null => false
  end

  create_table "inscricoes_forum_entidades", :force => true do |t|
    t.string   "tipo_instituicao", :limit => 100, :null => false
    t.string   "nome",             :limit => 600, :null => false
    t.string   "email",            :limit => 600, :null => false
    t.text     "endereco",                        :null => false
    t.string   "telefone",         :limit => 100, :null => false
    t.string   "responsavel",      :limit => 600, :null => false
    t.string   "ip",               :limit => 100, :null => false
    t.datetime "created_on",                      :null => false
  end

  create_table "inscritos", :force => true do |t|
    t.string   "nome",                 :limit => 200
    t.string   "rg",                   :limit => 100
    t.string   "cpf",                  :limit => 100
    t.text     "endereco"
    t.string   "instituicao",          :limit => 200
    t.string   "telefone",             :limit => 100
    t.string   "email",                :limit => 100
    t.string   "certificado_online",   :limit => 6
    t.string   "certificado_impresso", :limit => 6
    t.string   "ip",                   :limit => 100
    t.string   "presente",             :limit => 2,   :default => "0"
    t.datetime "created_at"
    t.string   "numero",               :limit => 40
    t.string   "complemento",          :limit => 200
    t.string   "bairro",               :limit => 140
    t.string   "cidade",               :limit => 160
    t.string   "uf",                   :limit => 4
    t.string   "painel1",              :limit => 2
    t.string   "painel2",              :limit => 2
    t.string   "painel3",              :limit => 2
  end

  create_table "instituicao_ensinos", :force => true do |t|
    t.string   "nome",        :limit => 120
    t.string   "sigla",       :limit => 100
    t.string   "observacoes", :limit => 1000
    t.integer  "created_by"
    t.datetime "created_at"
    t.integer  "updated_by"
    t.datetime "updated_at"
  end

  create_table "legislaturas", :force => true do |t|
    t.string   "legislatura",        :limit => 30
    t.string   "sessao_legislativa", :limit => 30
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "lotacoes", :force => true do |t|
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.integer  "funcao_id"
    t.integer  "pessoa_id",                    :null => false
    t.integer  "setor_id",                     :null => false
    t.integer  "cargo_id"
    t.string   "observacao",   :limit => 6000
    t.integer  "created_by"
    t.datetime "created_at"
    t.integer  "updated_by"
    t.datetime "updated_at"
  end

  create_table "lotacoes_equipamentos", :force => true do |t|
    t.integer  "equipamento_id",                 :null => false
    t.integer  "setor_id",                       :null => false
    t.datetime "data_entrada",                   :null => false
    t.datetime "data_saida"
    t.integer  "resp_cad"
    t.datetime "created_at",                     :null => false
    t.string   "observacao",     :limit => 5000
  end

  create_table "lotacoestemporarias", :force => true do |t|
    t.integer  "pessoa_id",  :null => false
    t.integer  "setor_id",   :null => false
    t.datetime "inicio",     :null => false
    t.datetime "fim"
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "mandatos", :force => true do |t|
    t.integer  "pessoa_id"
    t.integer  "legislatura_id"
    t.string   "ata",            :limit => 30
    t.string   "cargo",          :limit => 200
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "mensagens", :force => true do |t|
    t.integer  "autor_id",       :null => false
    t.integer  "solicitacao_id", :null => false
    t.text     "descricao"
    t.integer  "resp_cad",       :null => false
    t.datetime "created_on",     :null => false
    t.integer  "resp_alt",       :null => false
    t.datetime "updated_on",     :null => false
  end

  create_table "mensagens_sms", :force => true do |t|
    t.integer  "remetente_id",                :null => false
    t.string   "texto",                       :null => false
    t.datetime "created_at",                  :null => false
    t.string   "de",           :limit => 100
  end

  create_table "mensagens_sms_enviadas", :force => true do |t|
    t.integer  "mensagem_sms_id",                 :null => false
    t.integer  "telefone_id",                     :null => false
    t.string   "status",          :limit => 3000
    t.datetime "created_at",                      :null => false
  end

  create_table "modelos_equipamento", :force => true do |t|
    t.string "nome", :limit => 500, :null => false
  end

  create_table "movimentacoesinternas", :force => true do |t|
    t.integer "reparticao_id",                             :null => false
    t.integer "interessado_id",                            :null => false
    t.integer "destino_id",                                :null => false
    t.integer "funcionario_movimentado_id",                :null => false
    t.string  "created_on",                 :limit => 100
    t.text    "justificativa",                             :null => false
  end

  create_table "orgaosexternos", :force => true do |t|
    t.string "nome",     :limit => 510, :null => false
    t.string "telefone", :limit => 510
  end

  create_table "paracmpacedencias", :force => true do |t|
    t.integer  "pessoa_id",       :null => false
    t.integer  "orgaoexterno_id", :null => false
    t.datetime "data_inicio",     :null => false
    t.datetime "data_fim"
    t.text     "observacoes"
  end

  create_table "partidos", :force => true do |t|
    t.string "nome",   :limit => 200
    t.string "sigla",  :limit => 20
    t.string "frente", :limit => 100
  end

  create_table "pesquisaorganizacional", :force => true do |t|
    t.integer "pessoa_id",                                                 :null => false
    t.string  "created_on",               :limit => 50,                    :null => false
    t.string  "data_termino",             :limit => 50
    t.integer "carga_horaria"
    t.text    "sugestoes"
    t.text    "comentario_carga_horaria"
    t.string  "funcionario_unico",        :limit => 100, :default => "NN", :null => false
    t.integer "setor_id"
  end

  create_table "pessoalservicos", :force => true do |t|
    t.string "nome", :limit => 510, :null => false
  end

  create_table "pessoas", :force => true do |t|
    t.string   "nome",                  :limit => 510,                      :null => false
    t.string   "nome_parlamentar",      :limit => 200
    t.string   "email",                 :limit => 200
    t.string   "status",                :limit => 20,  :default => "ativo"
    t.integer  "endereco_id"
    t.integer  "setor_id"
    t.integer  "cargo_id"
    t.string   "matricula",             :limit => 510
    t.string   "usuario",               :limit => 100
    t.text     "senha"
    t.text     "senha_salt"
    t.text     "senha_hash"
    t.text     "foto"
    t.string   "rg",                    :limit => 20
    t.string   "cpf",                   :limit => 100
    t.string   "carteira_orgao_classe", :limit => 100
    t.string   "habilitacao",           :limit => 100
    t.string   "type",                  :limit => 100
    t.string   "tipo_funcionario",      :limit => 510
    t.string   "orgao_origem_ad",       :limit => 510
    t.string   "escolaridade",          :limit => 510
    t.string   "nivel_instrucao",       :limit => 510
    t.integer  "funcao_id"
    t.string   "nivel_estagio",         :limit => 100
    t.string   "curso_estagiario",      :limit => 100
    t.string   "telefone",              :limit => 100
    t.string   "celular",               :limit => 100
    t.string   "website",               :limit => 200
    t.text     "observacoes"
    t.datetime "created_at"
    t.datetime "data_nascimento"
    t.string   "mae",                   :limit => 200
    t.string   "pai",                   :limit => 200
    t.string   "naturalidade",          :limit => 160
    t.string   "grupo_sanguineo",       :limit => 6
    t.string   "ddd",                   :limit => 30
    t.string   "sexo",                  :limit => 2
    t.string   "endereco",              :limit => 300
    t.string   "numero",                :limit => 40
    t.string   "complemento",           :limit => 200
    t.string   "bairro",                :limit => 140
    t.string   "cidade",                :limit => 160
    t.string   "uf",                    :limit => 4
    t.integer  "created_by"
    t.datetime "updated_at"
    t.integer  "updated_by"
    t.string   "cep",                   :limit => 100
    t.string   "indicacao",             :limit => 50
    t.text     "observacao"
  end

  create_table "presidentescomissoes", :force => true do |t|
    t.integer  "comissao_id", :null => false
    t.integer  "vereador_id", :null => false
    t.datetime "data_inicio", :null => false
  end

  create_table "processoeletronicodocumentos", :force => true do |t|
    t.integer "processo_id",                :null => false
    t.string  "tipo",        :limit => 50,  :null => false
    t.integer "pai_id"
    t.string  "created_on",  :limit => 100, :null => false
    t.string  "nome",        :limit => 100, :null => false
    t.integer "ordem"
    t.integer "resp_cad"
    t.string  "titulo",      :limit => 100
  end

  create_table "ramais", :force => true do |t|
    t.integer "setor_id",                   :null => false
    t.string  "numero",     :limit => 40,   :null => false
    t.string  "tipo",       :limit => 40
    t.string  "observacao", :limit => 1000
  end

  create_table "registro_necessidades", :force => true do |t|
    t.integer  "pessoa_id",   :null => false
    t.integer  "setor_id",    :null => false
    t.text     "necessidade", :null => false
    t.datetime "created_on",  :null => false
    t.datetime "updated_on"
  end

  create_table "relotacoes", :force => true do |t|
    t.integer "interessado_id",                       :null => false
    t.integer "reparticao_id",                        :null => false
    t.integer "reparticao_atual_id",                  :null => false
    t.integer "unidade_atual_id",                     :null => false
    t.integer "reparticao_destino_id",                :null => false
    t.integer "unidade_destino_id",                   :null => false
    t.integer "relotado_id",                          :null => false
    t.string  "created_on",            :limit => 100
    t.text    "justificativa",                        :null => false
  end

  create_table "relotacoespermutas", :force => true do |t|
    t.integer "interessado_id",                       :null => false
    t.integer "reparticao_atual_id",                  :null => false
    t.integer "unidade_atual_id",                     :null => false
    t.integer "reparticao_destino_id",                :null => false
    t.integer "unidade_destino_id",                   :null => false
    t.integer "permutado_id",                         :null => false
    t.text    "justificativa",                        :null => false
    t.string  "created_on",            :limit => 100
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :limit => 510
    t.text     "data"
    t.datetime "updated_at"
  end

  create_table "sessoes_plenarias", :force => true do |t|
    t.datetime "data"
    t.integer  "numero"
    t.string   "tipo",       :limit => 100
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "setor_performance", :force => true do |t|
    t.integer "setor_id"
    t.string  "querem_podem",       :limit => 100, :default => "0"
    t.string  "querem_naopodem",    :limit => 100, :default => "0"
    t.string  "naoquerem_podem",    :limit => 100, :default => "0"
    t.string  "naoquerem_naopodem", :limit => 100, :default => "0"
    t.text    "justificativa"
  end

  create_table "setor_recursos_humanos", :force => true do |t|
    t.string  "tipo",       :limit => 100
    t.integer "quantidade"
    t.integer "cargo_id"
    t.integer "funcao_id"
    t.string  "curso",      :limit => 200
    t.text    "atividades"
    t.integer "setor_id"
  end

  create_table "setor_recursos_tecnologicos", :force => true do |t|
    t.integer "setor_id"
    t.string  "suficiente",    :limit => 2, :default => "0"
    t.text    "justificativa",              :default => "N"
  end

  create_table "setor_visao_futuro", :force => true do |t|
    t.string  "potencializacao_capacitacao",    :limit => 2
    t.string  "potencializacao_informatizacao", :limit => 2
    t.string  "potencializacao_qualidade",      :limit => 2
    t.text    "potencializacao_sugestao"
    t.string  "crescimento",                    :limit => 40
    t.text    "crescimento_outro"
    t.string  "futuro_informatizado",           :limit => 2
    t.string  "futuro_continuidade",            :limit => 2
    t.text    "futuro_outra"
    t.integer "querem_podem",                                 :default => 0
    t.integer "querem_naopodem",                              :default => 0
    t.integer "naoquerem_podem",                              :default => 0
    t.integer "naoquerem_naopodem",                           :default => 0
    t.integer "setor_id"
  end

  create_table "setoratribuicoes", :force => true do |t|
    t.text    "descricao",                                                   :null => false
    t.text    "observacao"
    t.integer "setor_id",                                                    :null => false
    t.string  "tipo",                  :limit => 60,  :default => "NFORMAL", :null => false
    t.string  "frequencia_desempenho", :limit => 100
    t.string  "absorcao_mensal",       :limit => 100, :default => "0"
    t.integer "relevancia",                           :default => 0
  end

  create_table "setoratribuicoes_back", :force => true do |t|
    t.text    "descricao",                                                   :null => false
    t.text    "observacao"
    t.integer "setor_id",                                                    :null => false
    t.string  "tipo",                  :limit => 60,  :default => "NFORMAL", :null => false
    t.string  "frequencia_desempenho", :limit => 100
    t.string  "absorcao_mensal",       :limit => 100, :default => "0"
    t.integer "relevancia",                           :default => 0
  end

  create_table "setores", :force => true do |t|
    t.string  "nome",                :limit => 50,  :null => false
    t.string  "status",              :limit => 30,  :null => false
    t.integer "setor_id"
    t.integer "cod_almox",                          :null => false
    t.string  "email",               :limit => 100
    t.string  "tipo_setor",          :limit => 30,  :null => false
    t.string  "predio",              :limit => 10
    t.string  "pavimento",           :limit => 10
    t.string  "nro_sala",            :limit => 10
    t.string  "reparticao",          :limit => 1,   :null => false
    t.string  "sigla",               :limit => 30
    t.string  "formal",              :limit => 2
    t.integer "parent_id"
    t.text    "observacoes"
    t.text    "atribuicao"
    t.text    "servicos_externos"
    t.text    "conteudo_externo"
    t.string  "presta_servico",      :limit => 3
    t.text    "conteudo_interno"
    t.string  "website",             :limit => 600
    t.text    "imagem_file_name"
    t.text    "imagem_content_type"
    t.integer "imagem_file_size"
  end

  create_table "setornormas", :force => true do |t|
    t.integer "setor_id"
    t.integer "desatualizacao"
    t.integer "ineficacia"
    t.integer "consolidacao"
    t.text    "outras"
    t.string  "satisfatoria",   :limit => 2
  end

  create_table "sisprotwebs", :force => true do |t|
    t.text     "sugestao",   :null => false
    t.datetime "created_on"
    t.text     "contato"
  end

  create_table "sistemas", :force => true do |t|
    t.string  "nome",       :limit => 100,                      :null => false
    t.text    "descricao"
    t.integer "resp_cad",                                       :null => false
    t.string  "created_on", :limit => 100,                      :null => false
    t.integer "resp_alt",                                       :null => false
    t.string  "updated_on", :limit => 100,                      :null => false
    t.string  "controller", :limit => 100
    t.string  "image_name", :limit => 100
    t.string  "status",     :limit => 100, :default => "ativo", :null => false
    t.string  "url",        :limit => 400
    t.string  "porta",      :limit => 50
    t.string  "host",       :limit => 50
  end

  create_table "solicitacaolotacoes", :force => true do |t|
    t.integer "quantidade",                    :null => false
    t.integer "cargo_id",                      :null => false
    t.string  "created_on",     :limit => 100, :null => false
    t.integer "interessado_id",                :null => false
    t.integer "destino_id",                    :null => false
    t.integer "reparticao_id",                 :null => false
    t.text    "justificativa",                 :null => false
  end

  create_table "solicitacoes", :force => true do |t|
    t.integer  "funcionario_id",               :null => false
    t.integer  "setor_id",                     :null => false
    t.integer  "equipamento_id"
    t.integer  "nro_patrimonio"
    t.text     "descricao"
    t.string   "tipo_problema",  :limit => 40
    t.string   "status",         :limit => 40
    t.integer  "resp_cad",                     :null => false
    t.datetime "created_on",                   :null => false
    t.integer  "resp_alt",                     :null => false
    t.datetime "updated_on",                   :null => false
  end

  create_table "solicitacoes_motoristas", :force => true do |t|
    t.integer  "veiculo_id"
    t.integer  "setor_solicitante_id",                :null => false
    t.integer  "motorista_id"
    t.datetime "data",                                :null => false
    t.string   "destino",              :limit => 200
    t.string   "categoria_veiculo",    :limit => 20,  :null => false
    t.integer  "nro_ocupantes"
    t.string   "hora_inicio_prevista", :limit => 20,  :null => false
    t.string   "hora_fim_prevista",    :limit => 20,  :null => false
    t.string   "hora_inicio",          :limit => 20
    t.string   "hora_fim",             :limit => 20
    t.integer  "km_inicio"
    t.integer  "km_fim"
    t.string   "status",               :limit => 100
    t.string   "observacoes",          :limit => -1
    t.integer  "resp_cad",                            :null => false
    t.datetime "created_on",                          :null => false
    t.integer  "resp_alt",                            :null => false
    t.datetime "updated_on",                          :null => false
    t.text     "passageiros"
  end

  create_table "sugestoes", :force => true do |t|
    t.text     "descricao",  :null => false
    t.integer  "resp_cad",   :null => false
    t.datetime "created_on", :null => false
  end

  create_table "sysdiagrams", :id => false, :force => true do |t|
    t.string  "name",         :limit => 256, :null => false
    t.integer "principal_id",                :null => false
    t.integer "diagram_id",                  :null => false
    t.integer "version"
    t.binary  "definition"
  end

  create_table "telefones", :force => true do |t|
    t.integer "codigo_area",               :null => false
    t.string  "numero",      :limit => 50, :null => false
    t.string  "tipo",        :limit => 50, :null => false
    t.string  "padrao",      :limit => 1,  :null => false
    t.integer "pessoa_id",                 :null => false
  end

  create_table "tipos_atos", :force => true do |t|
    t.integer  "base_legal_id"
    t.string   "verbo",         :limit => 100
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

  create_table "tipos_equipamento", :force => true do |t|
    t.string "nome", :limit => 500, :null => false
  end

  create_table "turmas", :force => true do |t|
    t.datetime "data_inicio",                    :null => false
    t.datetime "data_termino",                   :null => false
    t.string   "horario_inicio",  :limit => 100, :null => false
    t.string   "horario_termino", :limit => 100, :null => false
    t.integer  "numero_vagas",                   :null => false
    t.string   "status",          :limit => 100, :null => false
    t.integer  "evento_id",                      :null => false
    t.text     "local"
  end

  create_table "veiculos", :force => true do |t|
    t.string   "status",      :limit => 20
    t.string   "marca",       :limit => 200, :null => false
    t.string   "modelo",      :limit => 200, :null => false
    t.string   "placa",       :limit => 20
    t.integer  "ano"
    t.text     "observacoes"
    t.integer  "resp_cad",                   :null => false
    t.datetime "created_on",                 :null => false
    t.integer  "resp_alt",                   :null => false
    t.datetime "updated_on",                 :null => false
  end

  create_table "vereadores_partidos", :force => true do |t|
    t.integer  "pessoa_id"
    t.integer  "partido_id"
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.string   "lider",        :limit => 2, :default => "0", :null => false
  end

  create_table "vereadoresbancadas", :force => true do |t|
    t.integer  "bancada_id",  :null => false
    t.integer  "gabinete_id", :null => false
    t.datetime "data_inicio"
  end

  create_table "votacoes", :force => true do |t|
    t.integer "sessao_plenaria_id"
    t.integer "processo_id"
    t.string  "tipo",               :limit => 100
    t.string  "resultado",          :limit => 100
    t.string  "descricao",          :limit => 2000
  end

  create_table "votos", :force => true do |t|
    t.integer  "votacao_id"
    t.integer  "vereador_id"
    t.string   "voto",        :limit => 100
    t.integer  "resp_cad"
    t.datetime "created_on"
    t.integer  "resp_alt"
    t.datetime "updated_on"
  end

end
