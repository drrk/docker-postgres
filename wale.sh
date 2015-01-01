#!/bin/sh

sed -ri "s/^#(wal_level\s*=\s*)\S+/\1'archive'/" "$PGDATA"/postgresql.conf
sed -ri "s/^#(archive_mode\s*=\s*)\S+/\1'on'/" "$PGDATA"/postgresql.conf
sed -ri "s/^#(archive_command\s*=\s*)\S+/\1'envdir \/etc\/wal-e.d\/env \/usr\/local\/bin\/wal-e wal-push %p'/" "$PGDATA"/postgresql.conf
sed -ri "s/^#(archive_timeout\s*=\s*)\S+/\1 60/" "$PGDATA"/postgresql.conf
