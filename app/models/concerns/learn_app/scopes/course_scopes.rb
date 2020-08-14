module LearnApp::Scopes::CourseScopes
  
  extend ActiveSupport::Concern

  included do

    # Scopes
    scope :search, lambda {|query| where("
      LOWER(courses.code) LIKE LOWER('%#{query}%') OR\
      LOWER(courses.name) LIKE LOWER('%#{query}%') 
     ")}

    #filter
    # scope :upcoming, lambda { where("courses.created_at >= ?", Time.now) }
    # scope :past, lambda { where("courses.created_at < ?", Time.now) }

  end
  
end