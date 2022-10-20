ActiveAdmin.register Lesson do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :duration, :cost, :category, :language, :level, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :duration, :cost, :category, :language, :level, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
