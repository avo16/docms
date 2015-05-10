class Micropost < ActiveRecord::Base

	def microposts_params
      params.require(:micropost).permit( :content )
    end
      belongs_to :user
      validates :content, presence: true, length: { maximum:140 }
      validates :user_id, presence: true
      default_scope { order('microposts.created_at DESC') }
end
