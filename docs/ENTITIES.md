# Entities

1. User: Represents a user in the system
   - id
   - username
   - password
   - email
   - created_at
   - updated_at
2. Task: Represents a task created by a user
   - id
   - title
   - description
   - status
   - priority
   - deadline
   - tags
   - user_id
   - created_at
   - updated_at
3. Notification: Represents a notification to be sent to a user
   - id
   - user_id
   - task_id
   - type
   - message
   - status
   - created_at
   - sent_at
4. Analytics: Represents data for analytics
   - id
   - user_id
   - tasks_completed
   - task_pending
   - average_completion_time
   - created_at
   - updated_at