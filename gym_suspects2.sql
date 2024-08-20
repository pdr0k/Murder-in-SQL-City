SELECT
    gym_members.id as gym_id,
    gym_members.person_id,
    gym_members.name,
    check_in.check_in_date,
    check_in.check_in_time,
    check_in.check_out_time
FROM get_fit_now_member AS gym_members

INNER JOIN get_fit_now_check_in AS check_in ON check_in.membership_id = gym_members.id

WHERE check_in_date = '20180109'