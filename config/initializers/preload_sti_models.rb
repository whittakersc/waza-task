if Rails.env.development?
  %w[bau project].each do |c|
    require_dependency File.join("app","models","#{c}.rb")
  end
end