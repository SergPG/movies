# frozen_string_literal: true

ActiveAdmin.register Movie do
  actions :all
  permit_params :category_id, :title, :text

  form do |f|
    f.inputs 'Movie' do
      f.input :category
    end
    f.inputs  :title
    f.inputs  :text

    para 'Press cancel to return to the list without saving.'
    f.actions
  end

  controller do
    def find_resource
      begin
        scoped_collection.where(slug: params[:id]).first!
      rescue ActiveRecord::RecordNotFound
        scoped_collection.find(params[:id])
      end
    end
  end
end
