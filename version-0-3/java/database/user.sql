-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER closet_app_owner
WITH PASSWORD 'closetappowner';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO closet_app_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO closet_app_owner;

CREATE USER closet_app_appuser
WITH PASSWORD 'closetappuser';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO closet_app_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO closet_app_appuser;
