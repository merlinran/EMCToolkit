# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Call
  include Rhom::PropertyBag

  # Uncomment the following line to enable sync with Call.
  # enable :sync

  #add model specifc code here
  def self.build(msg)
    if msg =~ /<call>(\d{8});<task>(\d{8})\s+;/
    else
      nil
    end
  end
end
