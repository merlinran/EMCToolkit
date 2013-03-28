require 'rho/rhocontroller'
require 'helpers/browser_helper'

class CallController < Rho::RhoController
  include BrowserHelper

  # GET /Call
  def index
    @calls = Call.find(:all)
    render :back => '/app'
  end

  # GET /Call/{1}
  def show
    @call = Call.find(@params['id'])
    if @call
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Call/new
  def new
    render :action => :new
  end

  # GET /Call/{1}/edit
  def edit
    @call = Call.find(@params['id'])
    if @call
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Call/create
  def create
    @call = Call.build(@params['msg'])
    redirect :action => :index
  end

  # POST /Call/{1}/update
  def update
    @call = Call.find(@params['id'])
    @call.update_attributes(@params['call']) if @call
    redirect :action => :index
  end

  # POST /Call/{1}/delete
  def delete
    @call = Call.find(@params['id'])
    @call.destroy if @call
    redirect :action => :index  
  end
end
