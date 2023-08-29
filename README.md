# README

## users テーブル
| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nick_name          | string | null: false, unique:true |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false, unique:true |
| first_name         | string | null: false              |
| last_name          | string | null: false              |
| first_name_kana    | string | null: false              |
| last_name_kana     | string | null: false              |
| birthday           | date   | null: false              |

### Association
has_one :address
has_many :items


## addresses テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| postal_code        | references | null: false |
| phone              | strings    | null: false |
| prefecture_id      | integer    | null: false |
| county/city_id     | integer    | null: false |
| street             | string     | null: false |
| building           | string     |             |
| first_name         | string     | null: false |
| last_name          | string     | null: false |
| first_name_kana    | string     | null: false |
| last_name_kana     | string     | null: false |

### Association
belong_to :user
belong_to :item
has_one :payment


## items テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| item_name          | string     | null: false |
| description        | string     | null: false |
| price              | integer    | null: false |

### Association
belongs_to :user
has_one :order


## orders テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :item
has_one :payment


## payments テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| address            | references | null: false, foreign_key: true |
| order              | references | null: false, foreign_key: true |

### Association
belongs_to :address
belongs_to :order

