# Association Model:
                         @user      
                           |           
                           ^           
@sport -< @category -< @ranking -< @player >- @team

user has_many :rankings
user has_many :categories, through: :rankings

sport has_many :categories           

category belongs_to :sport
category has_many :rankings
category has_many :users, :rankings

ranking belongs_to :user
ranking belongs_to :category
ranking has_many :players
ranking has_many :teams, through: :players

player belongs_to :ranking
player belongs_to :team

team has_many :players
team has_many :rankings, through: :players

# Attributes:

*User*
* username
* email
* password_digest
* fav_sport
* fav_team
* fav_player

$ rails g resource User username:string email:string password_digest:string fav_sport:string fav_team:string fav_player:string

*Sport*
* name

$ rails g resource Sport name:string

*Category*
* title
* sport_id

$ rails g resource Category title:string sport_id:integer sport:belongs_to

*Ranking*
* description
* user_id
* category_id

$ rails g resource Ranking description:text user_id:integer category_id:integer user:belongs_to category:belongs_to

*Player*
* first_name
* last_name
* position
* number
* year
* ranking_id
* team_id

$ rails g resource Player first_name:string last_name:string position:string number:integer ranking_id:integer team_id:integer ranking:belongs_to team:belongs_to

*Team*
* city
* name
* year

$ rails g resource Team city:string name:string year:integer


###########################**********************#############################

#                               Scalability

###########################**********************#############################

                        @user
                          |
                          ^
@sport -< @category -< @ranking -< @player >- @team -< @coach -< @staff
   |                      v           |
   ^                      |           ^
@league                @comment   @sneaker -< @color_way
                                      v
                                      |
                                   @brand

# Added Associations:
sport has_many :leagues

league belongs_to :sport

user has_many :comments, through: :rankings

ranking belongs_to :comment

comment has_many :rankings
comment has_many :users, through: :rankings

player has_many :sneakers
player has_many :brands, through: :sneakers

sneaker belongs_to :player
sneaker belongs_to :brand
sneaker has_many :color_ways

color_way belongs_to :sneaker

brand has_many :sneakers
brand has_many :players, through: :sneakers

team has_many :coaches

coach belongs_to :team
coach has_many :staff_members

staff_members belongs_to :coach

# Added Attributes:
*Ranking*
* comment_id

$ rails g migration addCommentIdToRankingsTable comment_id:integer comment:belongs_to

*Sport*
* gender

$ rails g migration addGenderToSportsTable gender:string

*League*
* name
* sport_id

$ rails g resource League name:string sport_id:integer

*Sneaker*
* name
* release_date
* player_id
* brand_id

$ rails g resource Sneaker name:string release_date:integer player_id:integer player:belongs_to

*Brand*
* name

$ rails g resource Brand name:string release_date:integer player_id:integer player:belongs_to

*ColorWay*
* base
* secondary
* tertiary

*Coach*
* first_name
* last_name
* team_id

$ rails g resource Coach first_name:string last_name:string team_id:integer team:belongs_to

*Staff*
* first_name
* last_name
* job_title
* coach_id

$ rails g resource Staff first_name:string last_name:string job_title:string coach_id:integer coach:belongs_to
