Если неоднократный вход в логввывести нексолько записей
select user_id, dttm from user_logs GROUP BY user_id,dttm having count(user_id)>1
