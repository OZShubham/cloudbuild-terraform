import os
import app


db_type = os.environ.get("DATABASE_TYPE", "postgres")


def migrate():
    db = app.connect_db()
    with db.connect() as conn:

        if db_type == "mssql":
            now_stmt = "SELECT getdate() as now"
        else:
            now_stmt = "SELECT NOW() as now"

        row = conn.execute(now_stmt).fetchone()
        data = dict(row)
        print("Performed migration at", data["now"])


print("Apply migration...")
migrate()