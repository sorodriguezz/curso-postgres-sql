create or replace function sayhello(user_name varchar) returns varchar
  language plpgsql
as
$$
  begin
  return 'Hola ' || user_name;
  end
$$;


create or replace function comment_replies(id integer) returns json
    language plpgsql
as
$$
declare
    result json; -- declararacion del resultado
begin
    select json_agg(json_build_object('user', comments.user_id, 'comment', comments.content))
    into result -- setear el select en result
    from comments
    where comment_parent_id = id;

    return result; -- retorno de la funcion
end
$$;