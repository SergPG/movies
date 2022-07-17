ActiveAdmin.register Movie do
    actions :all
    permit_params :category_id, :title, :text

    form do |f|
        
        f.inputs 'Movie' do
            f.input :category
        end 
        f.inputs  :title     
        f.inputs  :text

        para "Press cancel to return to the list without saving."
        f.actions
    end    

end
