# == Schema Information
#
# Table name: muhsaf_pages
#
#  id             :bigint           not null, primary key
#  page_number    :integer
#  verse_mapping  :json
#  verses_count   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  first_verse_id :integer
#  last_verse_id  :integer
#
# Indexes
#
#  index_muhsaf_pages_on_page_number  (page_number)
#
class MuhsafPage < ApplicationRecord
end
