Ranking Most Active Guests

Airbnb Medium ID 10159

-Rank guests based on the total number of messages they've exchanged with any of the hosts. Guests with the same number of messages as other guests should have the same rank. Do not skip rankings if the preceding rankings are identical.
Output the rank, guest id, and number of total messages they've sent. Order by the highest number of total messages first.

Table: airbnb_contacts

airbnb_contacts
---------------

id_guest: varchar

id_host: varchar

id_listing: varchar

ts_contact_at: datetime

ts_reply_at: datetime

ts_accepted_at: datetime

ts_booking_at: datetime

ds_checkin: datetime

ds_checkout: datetime

n_guests: int

n_messages: int