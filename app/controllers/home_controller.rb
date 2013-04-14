class HomeController < ApplicationController
  def index
    @stuff = "stuff"
  end
  
  def lapi
    @establishments = []
    if params[:type] == "subject"
          @data = Course.where("title ILIKE ? ", "%#{params[:q]}%")
      
          @data.each do |course|
            @establishments << course.establishment
            @establishments.uniq!
          end   
        elsif params[:type] == "institution"
          @establishments = Establishment.where("establishment_name ILIKE ? ", "%#{params[:q]}%")
        elsif params[:type] == "postcode"
          @establishments = Establishment.where("post_code ILIKE ? ", "%#{params[:q]}%") 
        elsif params[:type] == "qualification"
          @data = Course.where("qualification_type ILIKE ? ", "%#{params[:q]}%")
          @data.each do |course|
            @establishments << course.establishment
            @establishments.uniq!
          end   
        elsif params[:type] == "scqf"
          @data = Course.where("scqf_level ILIKE ? ", "%#{params[:q]}%")
          @data.each do |course|
            if course.establishment
              @establishments << course.establishment
              @establishments.uniq!
            end
          end
        end 
  end
  
  def search_subject
    @data = params[:q]
    redirect_to :controller => 'home', :action => 'lapi', :q => params[:q], :type => "subject"
  end
  
  def search_institution
    @data = params[:q]
    redirect_to :controller => 'home', :action => 'lapi', :q => params[:q], :type => "institution"
  end
  
  def search_postcode
    @data = params[:q]
    redirect_to :controller => 'home', :action => 'lapi', :q => params[:q], :type => "postcode"
  end
  
  def search_qualification
    @data = params[:q]
    redirect_to :controller => 'home', :action => 'lapi', :q => params[:q], :type => "qualification"
  end
  
  def search_scqf
    @data = params[:q]
    redirect_to :controller => 'home', :action => 'lapi', :q => params[:q], :type => "scqf"
  end
  
end