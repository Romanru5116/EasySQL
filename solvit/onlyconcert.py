#кто был нв концерт но не был в театре
SELECT user_id FROM orders WHERE event_type = 'концерт'
EXCEPT
SELECT user_id FROM orders WHERE event_type = 'театр';
