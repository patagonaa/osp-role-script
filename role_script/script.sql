INSERT INTO roles_users (user_id, role_id)
	SELECT user.id, role.id
	FROM user, role
    WHERE
        role.name IN ('User', 'Streamer') AND
        NOT EXISTS (SELECT * FROM roles_users existing_role_users WHERE existing_role_users.user_id = user.id AND existing_role_users.role_id = role.id);