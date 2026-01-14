**consistency beats intensity**

<!-- Login DB -->
psql -U <userName> -d <databseName>

------------------
------------------

<!-- Scafolding contact-submission with API flag-->
# Generate scaffold with API flag for contact submissions
rails generate scaffold ContactSubmission \
  name:string \
  email:string \
  company:string \
  phone:string \
  subject:string \
  message:text \
  service_interest:string \
  status:string \
  ip_address:string \
  --api
  
  ----------
  -----------