class TipoClientesController < ApplicationController
  load_and_authorize_resource
  before_action :set_tipo_cliente, only: %i[ show edit update destroy ]

  # GET /tipo_clientes or /tipo_clientes.json
  def index
    @tipo_clientes = TipoCliente.all
  end

  # GET /tipo_clientes/1 or /tipo_clientes/1.json
  def show
  end

  # GET /tipo_clientes/new
  def new
    @tipo_cliente = TipoCliente.new
  end

  # GET /tipo_clientes/1/edit
  def edit
  end

  # POST /tipo_clientes or /tipo_clientes.json
  def create
    @tipo_cliente = TipoCliente.new(tipo_cliente_params)

    respond_to do |format|
      if @tipo_cliente.save
        format.html { redirect_to tipo_clientes_path, notice: "Tipo de Cliente creado satisfactoriamente." }
        format.json { render :show, status: :created, location: @tipo_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_clientes/1 or /tipo_clientes/1.json
  def update
    respond_to do |format|
      if @tipo_cliente.update(tipo_cliente_params)
        format.html { redirect_to tipo_clientes_path, notice: "Tipo de Cliente modificado satisfactoriamente." }
        format.json { render :show, status: :ok, location: @tipo_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_clientes/1 or /tipo_clientes/1.json
  def destroy
    @tipo_cliente.destroy
    respond_to do |format|
      format.html { redirect_to tipo_clientes_url, notice: "Tipo de Cliente eliminado satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_cliente
      @tipo_cliente = TipoCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_cliente_params
      params.require(:tipo_cliente).permit(:desc_tipo_cliente)
    end
end
