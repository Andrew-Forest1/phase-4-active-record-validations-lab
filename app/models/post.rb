class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    validates :title, format: {with: /Won't Believe|Secret|Top \d|Guess/i, message: "not clickbaity enough ser!"} #cleaner version of clickbait_y
    #validate :clickbait_y

    # def clickbait_y
    #     if(title.is_a?(String))
    #         if !title.include?("Won't Believe") && !title.include?("Secret") && !title.include?("Top") && !title.include?("Guess")
    #             errors.add(:title, "Not Click baity")
    #         end
    #     end
    # end

    # def clickbait_y
    #     if [/Won't Believe/i, /Secret/i, /Top \d/i, /Guess/i].non? {|pattern| pattern.match(self.title)}
    #         errors.add(:title, "Not Click Baity")
    #     end
    # end

end
