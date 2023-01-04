class Diary < ApplicationRecord
  enum week: { credit_card: 0, transfer: 1 }
end
