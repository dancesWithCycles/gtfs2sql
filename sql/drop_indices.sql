BEGIN;

DROP INDEX gtfs_shapes_shape_key;

ALTER TABLE gtfs_stop_times DROP CONSTRAINT gtfs_stop_times_pkey;
DROP INDEX gtfs_stop_times_key;

DROP INDEX arr_time_index;
DROP INDEX dep_time_index;
DROP INDEX gtfs_stop_dist_along_shape_index;
DROP INDEX gtfs_calendar_dates_dateidx;

ALTER TABLE gtfs_agency DROP CONSTRAINT gtfs_agency_pkey CASCADE;

ALTER TABLE gtfs_calendar DROP CONSTRAINT gtfs_calendar_pkey CASCADE;

ALTER TABLE gtfs_stops DROP CONSTRAINT gtfs_stops_pkey CASCADE;

ALTER TABLE gtfs_routes
    DROP CONSTRAINT gtfs_routes_pkey CASCADE;

ALTER TABLE gtfs_shape_geoms
    DROP CONSTRAINT gtfs_shape_geom_pkey;

ALTER TABLE gtfs_fare_attributes
    DROP CONSTRAINT gtfs_fare_attributes_pkey;

ALTER TABLE gtfs_trips
  DROP CONSTRAINT gtfs_trips_pkey;

ALTER TABLE gtfs_frequencies
  DROP CONSTRAINT gtfs_frequencies_pkey;

COMMIT;