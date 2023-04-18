-- name: CreateChat :exec

INSERT INTO
    chats (
        id,
        user_id,
        initial_message_id,
        status,
        token_usage,
        model,
        model_max_tokens,
        temperature,
        top_p,
        n,
        stop,
        max_tokens,
        presence_penalty,
        frequency_penalty,
        created_at,
        updated_at
    )
VALUES (
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?
    );

-- name: AddMessage :exec

INSERT INTO
    messages (
        id,
        chat_id,
        role,
        content,
        tokens,
        model,
        erased,
        order_msg,
        created_at
    )
VALUES
(?, ?, ?, ?, ?, ?, ?, ?, ?);

-- name: FindChatByID :one

SELECT * FROM chats WHERE id = ?;