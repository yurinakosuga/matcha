class Diary < ApplicationRecord
  enum week: { credit_card: 0, transfer: 1 }
  enum time: { weekday: 0, weekend_holiday: 1 }
  enum how_to_use: { for_here: 0, to_go: 1 }
  enum waiting_time: { none: 0, 15minutes: 1, 30minutes: 2, 45minutes: 3, 1hour: 4 }
  enum amount: { small: 0, medium: 1, large: 2 }
  enum sweetness: { sweet: 0, just_right: 1, not_sweet: 2 }
 
end
