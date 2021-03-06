ActiveAdmin.register Album do
  menu parent: "Gallery", priority: 1
  config.paginate = false
  config.sort_order = "created_at_asc"

  index do
    selectable_column
    column :cover_photo do |album|
      image_tag album.cover_photo.file_url(:small), height: 100
    end
    column :name_en
    column :name_hr
    column :photos do |album|
      album.photos.count
    end
    default_actions
  end

  filter :name_en
  filter :name_hr

  form partial: "form"

  show title: ->(album) { album.to_s } do |album|
    attributes_table do
      row :name_en
      row :name_hr
      row :photos do
        ol class: "photos" do
          album.photos.inject(raw("")) do |result, photo|
            result << li(class: "photo") do
              image_tag(photo.file_url(:small), height: 100)
            end
          end
        end
      end
    end
  end

  controller do
    respond_to :js, only: :update

    def create
      super do |success, failure|
        success.html { redirect_to edit_resource_path }
      end
    end

    def update
      super do |success, failure|
        success.html { redirect_to collection_path }
      end
    end
  end
end
