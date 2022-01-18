class User < ApplicationRecord
    validates :username, presence: { message: "用户名不能为空"}
end
