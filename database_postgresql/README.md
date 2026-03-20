# Travel Planner Pro - PostgreSQL Database

## Connection Details
```
psql postgresql://appuser:dbuser123@localhost:5000/myapp
```

## Schema Overview

### Enum Types
- **user_role**: `user`, `admin`
- **trip_status**: `planning`, `active`, `completed`, `cancelled`
- **activity_category**: `sightseeing`, `food`, `transport`, `accommodation`, `shopping`, `entertainment`, `nature`, `culture`, `other`
- **expense_category**: `flights`, `accommodation`, `food`, `transport`, `activities`, `shopping`, `insurance`, `visa`, `other`
- **share_permission**: `view`, `edit`
- **notification_type**: `trip_reminder`, `share_invite`, `trip_update`, `budget_alert`, `system`
- **admin_action**: `ban_user`, `unban_user`, `delete_trip`, `delete_user`, `update_role`, `system_config`

### Tables
| Table | Description |
|-------|-------------|
| `users` | User accounts with authentication, roles, and profile info |
| `trips` | Trip plans with destinations, dates, status, and coordinates |
| `itinerary_days` | Day-by-day breakdown within a trip |
| `activities` | Individual activities/places within an itinerary day |
| `budgets` | Per-trip budget allocation |
| `expenses` | Individual expense records linked to budgets |
| `packing_items` | Checklist items for trip packing |
| `trip_shares` | Trip sharing with view/edit permissions |
| `notifications` | User notifications and reminders |
| `admin_logs` | Audit trail for admin actions |

### Key Relationships
- `trips.owner_id` → `users.id` (CASCADE)
- `itinerary_days.trip_id` → `trips.id` (CASCADE)
- `activities.itinerary_day_id` → `itinerary_days.id` (CASCADE)
- `budgets.trip_id` → `trips.id` (CASCADE, unique per trip)
- `expenses.budget_id` → `budgets.id` (CASCADE)
- `packing_items.trip_id` → `trips.id` (CASCADE)
- `trip_shares.trip_id` → `trips.id` (CASCADE)
- `trip_shares.shared_with_id` → `users.id` (CASCADE)
- `notifications.user_id` → `users.id` (CASCADE)
- `notifications.related_trip_id` → `trips.id` (SET NULL)
- `admin_logs.admin_id` → `users.id` (CASCADE)

### Seed Data
- 4 users (1 admin, 3 regular)
- 3 trips (Paris, Tokyo, NYC)
- 3 itinerary days, 4 activities
- 3 budgets, 8 expenses
- 9 packing items
- 3 trip shares, 5 notifications, 2 admin logs
- Default password hash corresponds to: `password123`

## Scripts
- `startup.sh` - Initialize and start PostgreSQL
- `seed_remaining_data.sh` - Insert remaining seed data (budgets, expenses, packing, shares, notifications, admin logs)
- `backup_db.sh` - Backup the database
- `restore_db.sh` - Restore from backup
