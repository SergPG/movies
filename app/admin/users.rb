# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :email, :password, :admin

  # before_create { |user| user.admin = true }

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :admin
    actions
  end

  filter :email
  filter :created_at
  filter :admin

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :admin
    end
    f.actions
  end
end
