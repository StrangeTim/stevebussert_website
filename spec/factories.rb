FactoryGirl.define do
  factory(:user) do
    email('dolly@clone.com')
    username('supersheep')
    password('blacksheep')
    password_confirmation('blacksheep')
  end
end
