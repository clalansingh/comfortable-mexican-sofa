class Cms::File < ActiveRecord::Base
  
  set_table_name :cms_files

  # -- AR Extensions --------------------------------------------------------
  has_attached_file :file, ComfortableMexicanSofa.config.upload_file_options
  
  # -- Relationships --------------------------------------------------------
  belongs_to :site
  
  # -- Validations ----------------------------------------------------------
  validates :site_id, :presence => true
  validates_attachment_presence :file
  
end
