class ProveedoresController < ApplicationController
  load_and_authorize_resource
  before_action :set_proveedor, only: %i[ show edit update destroy ]

  # GET /proveedores or /proveedores.json
  def index
    @proveedores = Proveedor.all
  end

  # GET /proveedores/1 or /proveedores/1.json
  def show
  end

  # GET /proveedores/new
  def new
    @proveedor = Proveedor.new
  end

  # GET /proveedores/1/edit
  def edit
  end

  # POST /proveedores or /proveedores.json
  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to @proveedor, notice: "Proveedor creado satisfactoriamente." }
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedores/1 or /proveedores/1.json
  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to @proveedor, notice: "Proveedor modificado satisfactoriamente." }
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedores/1 or /proveedores/1.json
  def destroy
    @proveedor.destroy
    respond_to do |format|
      format.html { redirect_to proveedores_url, notice: "Proveedor eliminado satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proveedor_params
      params.require(:proveedor).permit(:ruc_proveedor, :nombre_proveedor, :telefono_proveedor, :email_proveedor, :nombre_contacto_proveedor, :telefono_contacto_proveedor)
    end
end
