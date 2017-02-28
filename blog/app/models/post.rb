class Post < ApplicationRecord
    def index
        @posts = Post.all
        averages = Array.new(100)


        @posts.each do |post|
            if averages[post.age] < 0
                x=2
            else 
                x=1
            end 
            averages[post.age]+= post.sleephours
            averages[post.age]= averages[post.age]/x
        end# GET /posts/1
    @values = averages.all
end

end

