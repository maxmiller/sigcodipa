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
      post :create, planejamento: { data_fim_prevista: @planejamento.data_fim_prevista, data_inicio_prevista: @planejamento.data_inicio_prevista, evento: @planejamento.evento, funcionario_id: @planejamento.funcionario_id, justificativa: @planejamento.justificativa, local: @planejamento.local, observacao: @planejamento.observacao, prioriade: @planejamento.prioriade, quantidade_alunos: @planejamento.quantidade_alunos, status: @planejamento.status, tipo_evento: @planejamento.tipo_evento, valor_passagem: @planejamento.valor_passagem }
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
    patch :update, id: @planejamento, planejamento: { data_fim_prevista: @planejamento.data_fim_prevista, data_inicio_prevista: @planejamento.data_inicio_prevista, evento: @planejamento.evento, funcionario_id: @planejamento.funcionario_id, justificativa: @planejamento.justificativa, local: @planejamento.local, observacao: @planejamento.observacao, prioriade: @planejamento.prioriade, quantidade_alunos: @planejamento.quantidade_alunos, status: @planejamento.status, tipo_evento: @planejamento.tipo_evento, valor_passagem: @planejamento.valor_passagem }
    assert_redirected_to planejamento_path(assigns(:planejamento))
  end

  test "should destroy planejamento" do
    assert_difference('Planejamento.count', -1) do
      delete :destroy, id: @planejamento
    end

    assert_redirected_to planejamentos_path
  end
end
