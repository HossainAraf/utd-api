<!--  
 future task(ContactSubmission model) -->
 # Optional: Add before_create callback for IP
  before_create :set_ip_address
  
  private
  
  def set_ip_address
    # This will be set from controller
  end
  

  ...............
  .................

  