-- db/init.sql
CREATE TABLE hotel_bookings (
  id UUID PRIMARY KEY,
  org_id UUID NOT NULL,
  hotel_id VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  checkin_date DATE NOT NULL,
  checkout_date DATE NOT NULL,
  amount NUMERIC(12,2) NOT NULL,
  status VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL
);

CREATE TABLE booking_events (
  id BIGSERIAL PRIMARY KEY,
  booking_id UUID NOT NULL,
  event_type VARCHAR(100) NOT NULL,
  payload JSONB,
  created_at TIMESTAMP NOT NULL
);

-- Index for optimization as required in Part 5
CREATE INDEX idx_bookings_city_created_at ON hotel_bookings(city, created_at);