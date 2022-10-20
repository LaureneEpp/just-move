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
  # show do
  #     attributes_table(:body, :created_at)

  #     panel I18n.t('active_admin.posts.new_comments') do
  #       table_for resource.comments.order(created_at: :desc).first(10) do
  #         column(:title)
  #         column(:category)
  #         column(:level)
  #         column(:description)
  #         column(:language)
  #         column(:duration)
  #         column(:cost)
  #       end
  #     end
  #   end
  
end
