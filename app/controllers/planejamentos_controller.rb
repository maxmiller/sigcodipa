class PlanejamentosController < ApplicationController
  before_action :set_planejamento, only: [:show, :edit, :update, :destroy]

  # GET /planejamentos
  # GET /planejamentos.json
  def index
    @planejamentos = Planejamento.all
  end

  # GET /planejamentos/1
  # GET /planejamentos/1.json
  def show
  end

  # GET /planejamentos/new
  def new
    @planejamento = Planejamento.new
  end

  # GET /planejamentos/1/edit
  def edit
  end

  # POST /planejamentos
  # POST /planejamentos.json
  def create
    @planejamento = Planejamento.new(planejamento_params)

    respond_to do |format|
      if @planejamento.save
        format.html { redirect_to @planejamento, notice: 'Planejamento was successfully created.' }
        format.json { render :show, status: :created, location: @planejamento }
      else
        format.html { render :new }
        format.json { render json: @planejamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planejamentos/1
  # PATCH/PUT /planejamentos/1.json
  def update
    respond_to do |format|
      if @planejamento.update(planejamento_params)
        format.html { redirect_to @planejamento, notice: 'Planejamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @planejamento }
      else
        format.html { render :edit }
        format.json { render json: @planejamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planejamentos/1
  # DELETE /planejamentos/1.json
  def destroy
    @planejamento.destroy
    respond_to do |format|
      format.html { redirect_to planejamentos_url, notice: 'Planejamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planejamento
      @planejamento = Planejamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planejamento_params
      params.require(:planejamento).permit(:funcionario_id, :evento, :local, :tipo_evento, :data_inicio_prevista, :data_fim_prevista, :justificativa, :quantidade_alunos, :valor_passagem, :prioriade, :status, :observacao)
    end
end
