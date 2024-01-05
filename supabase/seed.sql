CREATE FUNCTION auth.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY definer 
AS $$
BEGIN
    INSERT INTO public.users
    (id, email, name)
    VALUES
    (new.id, new.email, new.raw_user_meta_data ->> 'name');
    return new;
END;
$$;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  for each ROW EXECUTE PROCEDURE auth.handle_new_user();
