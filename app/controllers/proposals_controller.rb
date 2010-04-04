class ProposalsController < ApplicationController
  
  def new
    
    setup_proposal
    
  end
  
  def show
    
    setup_proposal
    @proposal.id = params[:id] || rand(23)
  end
  
  private
  
    def setup_proposal
      
      roles_name = ["Lider","Arquitecto","Implantador","Desarrollador","Diseñador","Maquetador"]
       roles_cost = [70,75,75,180,250,150]
       @roles_total = [1200,500,1800,2500,600,400]

       activities_names = ["Captura de Requisitos","Diseño de Interfaces","Desarrollo de  Funcionalidad","Desarrollo de Interfaces","Ejecución de Pruebas","Pruebas de Stress y Sobrecarga","Instalación","Capacitación"]

       @roles = []
       roles_name.each_with_index do |name,index|
         @roles << Role.new(:name=>name,:cost_per_hour=>roles_cost[index])
       end

       @proposal = Proposal.new
       @proposal.client_name = "Apoyo Virtual - Gloria"
       

       ["Sitio y canal para clientes basado en CMS con Google Analytics",
        "Manejo de Artículos y plataforma de Blogs con búsqueda y clasificación",
        "Manejo de Calendario de Eventos",
        "Manejo de Anuncios, Canal para anunciantes y Google AdSense",
        "Manejo de Encuestas",
        "Manejo y distribución de Boletines",
        "Sitios e Integración con Redes sociales (Facebook, Twitter, MySpace)"].each do |name|
          package = @proposal.packages.build(:name=>name)
          package.variable_cost = rand(5000.00)
          package.fixed_cost = rand(5000.00)
          package.profit_margin  = rand(5000.00)
          package.negotiation_margin = rand(5000.00)
          
          #  total                      :decimal(10, 3)
          #  variable_cost              :decimal(10, 3)
          #  fixed_cost                 :decimal(10, 3)
          #  profit_margin              :decimal(10, 3)
          #  negotiation_margin         :decimal(10, 3)
          #  markup                     :decimal(10, 3)
          
          
          
          activities_names.each do |name|
            package.activities.build(:name=>name)
          end

        end
      
    end
  
  
end
