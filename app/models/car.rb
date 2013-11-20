class Car < ActiveRecord::Base
  mount_uploader :asset, AssetUploader
end
