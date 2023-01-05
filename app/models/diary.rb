class Diary < ApplicationRecord
  enum week: { weekday: 0, weekend_holiday: 1 }
  enum time: { morning: 0, pm_12: 1, pm_14: 2, pm_16: 3, pm_18: 4 }
  enum how_to_use: { for_here: 0, to_go: 1 }
  enum waiting_time: { none_time: 0, minutes_15: 1, minutes_30: 2, minutes_45: 3, hour_1: 4 }
  enum amount: { small: 0, medium: 1, large: 2 }
  enum sweetness: { sweet: 0, just_right: 1, not_sweet: 2 }
  enum price: { yen_500: 0, yen_1000: 1, yen_1500: 2, yen_2000: 3 }
end
