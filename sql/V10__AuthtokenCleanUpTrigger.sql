CREATE FUNCTION delete_expired_tokens() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  row_count int;
BEGIN
  DELETE FROM authtokens WHERE expiration < NOW();
  IF found THEN
    GET DIAGNOSTICS row_count = ROW_COUNT;
    RAISE NOTICE 'DELETED % row(s) FROM authtokens', row_count;
  END IF;
  RETURN NULL;
END;
$$;

CREATE TRIGGER trigger_delete_expired_tokens
    AFTER INSERT ON authtokens
    EXECUTE PROCEDURE delete_expired_tokens();
