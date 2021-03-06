class Project < ActiveRecord::Base
  has_many :locations, :dependent => :delete_all
  has_and_belongs_to_many :methodologies, :join_table => :pr_meth
  
  has_many :host_project_participants
  has_many :entities, :through => :host_project_participants, :uniq => true
  
  has_many :annex1_project_participants
  has_many :entities, :through => :annex1_project_participants, :uniq => true
  
  has_many :designated_national_authorities
  has_many :entities, :through => :designated_national_authorities, :uniq => true
  
  has_many :designated_operational_entities
  has_many :entities, :through => :designated_operational_entities, :uniq => true
  
  has_many :consultants
  has_many :entities, :through => :consultants, :uniq => true
  attr_accessible :cdm_id, :methodology, :pr_type, :ref, :reg, :status, :sub_type, :title, :pr_url
end
