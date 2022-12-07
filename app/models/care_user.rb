class CareUser < ApplicationRecord
  enum sex: { 男:0, 女:1}
  enum availability: { あり:0, なし:1}
  enum division: { L宿泊:0, S宿泊:1, 通所:2, 訪問:3, その他:4}
end
