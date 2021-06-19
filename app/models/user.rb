class User < ApplicationRecord
    enum kind: [:knight, :wizard]
def title
    "#{self.kind} #{self.nickname} ##{self.level}"
end
    #validate :level, numericality: {greater_than: 0, less_than_or_equal_to: 99}
end
