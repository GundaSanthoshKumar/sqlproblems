select city 
from airbnb_search_details
having max(length(amenities));