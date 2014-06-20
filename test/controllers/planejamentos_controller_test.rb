require 'test_helper'

class PlanejamentosControllerTest < ActionController::TestCase
  setup do
    @planejamento = planejamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planejamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planejamento" do
    assert_difference('Planejamento.count') do
      post :create, planejamento: { carga_horaria: @planejamento.carga_horaria, cnpj: @planejamento.cnpj, email: @planejamento.email, empresa: @planejamento.empresa, fim_evento: @planejamento.fim_evento, inicio_evento: @planejamento.inicio_evento, justificativa: @planejamento.justificativa, local_evento: @planejamento.local_evento, nome: @planejamento.nome, nome_evento: @planejamento.nome_evento, prioridade: @planejamento.prioridade, quantidade_aluno: @planejamento.quantidade_aluno, siape: @planejamento.siape, taxa_inscricao: @planejamento.taxa_inscricao, tipo_empresa: @planejamento.tipo_empresa, tipo_solicitacao: @planejamento.tipo_solicitacao, valor_passagem: @planejamento.valor_passagem }
    end

    assert_redirected_to planejamento_path(assigns(:planejamento))
  end

  test "should show planejamento" do
    get :show, id: @planejamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planejamento
    assert_response :success
  end

  test "should update planejamento" do
    patch :update, id: @planejamento, planejamento: { carga_horaria: @planejamento.carga_horaria, cnpj: @planejamento.cnpj, email: @planejamento.email, empresa: @planejamento.empresa, fim_evento: @planejamento.fim_evento, inicio_evento: @planejamento.inicio_evento, justificativa: @planejamento.justificativa, local_evento: @planejamento.local_evento, nome: @planejamento.nome, nome_evento: @planejamento.nome_evento, prioridade: @planejamento.prioridade, quantidade_aluno: @planejamento.quantidade_aluno, siape: @planejamento.siape, taxa_inscricao: @planejamento.taxa_inscricao, tipo_empresa: @planejamento.tipo_empresa, tipo_solicitacao: @planejamento.tipo_solicitacao, valor_passagem: @planejamento.valor_passagem }
    assert_redirected_to planejamento_path(assigns(:planejamento))
  end

  test "should destroy planejamento" do
    assert_difference('Planejamento.count', -1) do
      delete :destroy, id: @planejamento
    end

    assert_redirected_to planejamentos_path
  end
end
