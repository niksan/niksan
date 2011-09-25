ActiveAdmin.register Site do

  menu :label => "Сайты"

  filter :name
  filter :url
  filter :date

  index do
    column 'Название', :name
    column 'URL', :url
    column 'Дата', :date
    column 'Изображение', :image do |site|
      image_tag site.image.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs "Содержание" do
      f.input :name
      f.input :url
      f.input :description
      f.input :image
      f.input :date
      f.input :task
      f.input :solution
    end
    f.buttons
  end
  
end
