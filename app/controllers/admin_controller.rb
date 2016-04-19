class AdminController < ApplicationController

  layout 'admin'

  before_action :authorize

end
