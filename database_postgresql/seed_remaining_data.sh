#!/bin/bash
# Seed remaining data for Travel Planner Pro
# This script inserts budgets, expenses, packing_items, trip_shares, notifications, and admin_logs
# Connection string from db_connection.txt
CONN="postgresql://appuser:dbuser123@localhost:5000/myapp"

echo "Inserting budgets..."
psql "$CONN" -c "INSERT INTO budgets (id, trip_id, total_budget, currency) VALUES ('ccc11111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', 3000.00, 'EUR') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO budgets (id, trip_id, total_budget, currency) VALUES ('ccc22222-2222-2222-2222-222222222222', '22222222-2222-2222-2222-222222222222', 5000.00, 'JPY') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO budgets (id, trip_id, total_budget, currency) VALUES ('ccc33333-3333-3333-3333-333333333333', '33333333-3333-3333-3333-333333333333', 1500.00, 'USD') ON CONFLICT (id) DO NOTHING;"

echo "Inserting expenses..."
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd11111-1111-1111-1111-111111111111', 'ccc11111-1111-1111-1111-111111111111', 'Round-trip flights', 450.00, 'EUR', 'flights', '2025-03-15', 'CDG Airport') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd22222-2222-2222-2222-222222222222', 'ccc11111-1111-1111-1111-111111111111', 'Hotel Le Marais 7 nights', 980.00, 'EUR', 'accommodation', '2025-03-15', 'Boutique hotel in Le Marais') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd33333-3333-3333-3333-333333333333', 'ccc11111-1111-1111-1111-111111111111', 'Eiffel Tower tickets', 26.80, 'EUR', 'activities', '2025-03-15', 'Summit access tickets') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd44444-4444-4444-4444-444444444444', 'ccc11111-1111-1111-1111-111111111111', 'Dinner at Le Jules Verne', 150.00, 'EUR', 'food', '2025-03-15', 'Fine dining') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd55555-5555-5555-5555-555555555555', 'ccc11111-1111-1111-1111-111111111111', 'Louvre Museum tickets', 17.00, 'EUR', 'activities', '2025-03-16', 'Museum entry') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd66666-6666-6666-6666-666666666666', 'ccc11111-1111-1111-1111-111111111111', 'Seine River Cruise', 65.00, 'EUR', 'activities', '2025-03-16', 'Evening dinner cruise') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd77777-7777-7777-7777-777777777777', 'ccc33333-3333-3333-3333-333333333333', 'NYC flights', 320.00, 'USD', 'flights', '2025-04-05', 'Domestic round-trip') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO expenses (id, budget_id, title, amount, currency, category, date, notes) VALUES ('ddd88888-8888-8888-8888-888888888888', 'ccc33333-3333-3333-3333-333333333333', 'Times Square Hotel', 450.00, 'USD', 'accommodation', '2025-04-05', '2 nights near Times Square') ON CONFLICT (id) DO NOTHING;"

echo "Inserting packing items..."
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee11111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', 'Passport', 1, false, 'documents') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee22222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Travel adapter (EU)', 1, false, 'electronics') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee33333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'Walking shoes', 1, false, 'clothing') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee44444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 'Rain jacket', 1, false, 'clothing') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee55555-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', 'Camera', 1, false, 'electronics') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee66666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', 'Sunscreen', 1, false, 'toiletries') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee77777-7777-7777-7777-777777777777', '11111111-1111-1111-1111-111111111111', 'T-shirts', 5, false, 'clothing') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee88888-8888-8888-8888-888888888888', '33333333-3333-3333-3333-333333333333', 'Passport', 1, true, 'documents') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO packing_items (id, trip_id, name, quantity, is_packed, category) VALUES ('eee99999-9999-9999-9999-999999999999', '33333333-3333-3333-3333-333333333333', 'Phone charger', 1, true, 'electronics') ON CONFLICT (id) DO NOTHING;"

echo "Inserting trip shares..."
psql "$CONN" -c "INSERT INTO trip_shares (id, trip_id, shared_with_id, permission) VALUES ('fff11111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', 'c3d4e5f6-a7b8-9012-cdef-123456789012', 'edit') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO trip_shares (id, trip_id, shared_with_id, permission) VALUES ('fff22222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'd4e5f6a7-b8c9-0123-defa-234567890123', 'view') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO trip_shares (id, trip_id, shared_with_id, permission) VALUES ('fff33333-3333-3333-3333-333333333333', '33333333-3333-3333-3333-333333333333', 'b2c3d4e5-f6a7-8901-bcde-f12345678901', 'view') ON CONFLICT (id) DO NOTHING;"

echo "Inserting notifications..."
psql "$CONN" -c "INSERT INTO notifications (id, user_id, type, title, message, is_read, related_trip_id) VALUES ('aab11111-1111-1111-1111-111111111111', 'b2c3d4e5-f6a7-8901-bcde-f12345678901', 'trip_reminder', 'Trip coming up!', 'Your Paris Adventure starts in 7 days. Time to finalize your plans!', false, '11111111-1111-1111-1111-111111111111') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO notifications (id, user_id, type, title, message, is_read, related_trip_id) VALUES ('aab22222-2222-2222-2222-222222222222', 'c3d4e5f6-a7b8-9012-cdef-123456789012', 'share_invite', 'Trip shared with you', 'Alice Johnson shared Paris Adventure with you (edit access).', false, '11111111-1111-1111-1111-111111111111') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO notifications (id, user_id, type, title, message, is_read, related_trip_id) VALUES ('aab33333-3333-3333-3333-333333333333', 'd4e5f6a7-b8c9-0123-defa-234567890123', 'share_invite', 'Trip shared with you', 'Alice Johnson shared Paris Adventure with you (view access).', true, '11111111-1111-1111-1111-111111111111') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO notifications (id, user_id, type, title, message, is_read, related_trip_id) VALUES ('aab44444-4444-4444-4444-444444444444', 'b2c3d4e5-f6a7-8901-bcde-f12345678901', 'budget_alert', 'Budget update', 'You have spent 56% of your Paris Adventure budget.', false, '11111111-1111-1111-1111-111111111111') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO notifications (id, user_id, type, title, message, is_read, related_trip_id) VALUES ('aab55555-5555-5555-5555-555555555555', 'c3d4e5f6-a7b8-9012-cdef-123456789012', 'trip_reminder', 'Trip is active!', 'Your NYC Weekend trip has started. Have a great time!', false, '33333333-3333-3333-3333-333333333333') ON CONFLICT (id) DO NOTHING;"

echo "Inserting admin logs..."
psql "$CONN" -c "INSERT INTO admin_logs (id, admin_id, action, target_user_id, details) VALUES ('ccb11111-1111-1111-1111-111111111111', 'a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'update_role', 'b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Verified user account for Alice Johnson') ON CONFLICT (id) DO NOTHING;"
psql "$CONN" -c "INSERT INTO admin_logs (id, admin_id, action, details) VALUES ('ccb22222-2222-2222-2222-222222222222', 'a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'system_config', 'Updated notification settings for trip reminders') ON CONFLICT (id) DO NOTHING;"

echo "Seed data insertion complete!"
echo ""
echo "Summary of seeded data:"
psql "$CONN" -c "SELECT 'users' AS table_name, COUNT(*) AS row_count FROM users UNION ALL SELECT 'trips', COUNT(*) FROM trips UNION ALL SELECT 'itinerary_days', COUNT(*) FROM itinerary_days UNION ALL SELECT 'activities', COUNT(*) FROM activities UNION ALL SELECT 'budgets', COUNT(*) FROM budgets UNION ALL SELECT 'expenses', COUNT(*) FROM expenses UNION ALL SELECT 'packing_items', COUNT(*) FROM packing_items UNION ALL SELECT 'trip_shares', COUNT(*) FROM trip_shares UNION ALL SELECT 'notifications', COUNT(*) FROM notifications UNION ALL SELECT 'admin_logs', COUNT(*) FROM admin_logs ORDER BY table_name;"
