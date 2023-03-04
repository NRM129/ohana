# テーブル設計

## users テーブル

| Column                  | Type      | Options           |
| ----------------------- | --------- | ----------------- |
| name                    | string    | null: false       |
| email                   | string    | unique: true 　　　|df
| encrypted_password      | string    | null: false       |df
| phone_number            | string    | null: false       |
| birthday                | date      | null: false       |
| blood_type_id           | integer   | null: false       |
| start_date              | date      |                   |
| facility_user           | date      | null: false       |
| admin         　　　　　  | boolean　 | 　　　　　　　       |


### Association

- has_many :notes
- has_many :comments


## notes テーブル

| Column                    | Type       | Options                        |
| ------------------------- | ---------- | ------------------------------ |
| record_date               | date       | null: false                    |
| weather_id                | integer    | null: false                    |
| responsible_person        | string     | null: false                    |
| utilization_time          | time       | null: false                    |
| body_temperature          | integer    |                                |
| pulse                     | integer    |                                |
| blood_pressure            | integer    |                                |
| taking_medicine           | integer    | null: false                    |
| usage_type_id             | string     | null: false                    |
| bathing                   | string     | null: false                    |
| diary                     | text       | null: false                    |
| user                      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_one_attached :image


## comments テーブル

| Column                    | Type       | Options                        |
| ------------------------- | ---------- | ------------------------------ |
| content                   | text       |                                |
| user                      | references | null: false, foreign_key: true |
| note                      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :note



## ActiveHash

| active_storage      | 
| ------------------- | 
| image               | 


## ActiveHash

| model               | 
| ------------------- | 
| blood_type          | 
| weather             | 
| Taking_medicine     |