.class final Landroid/database/sqlite/SQLiteCursorInjector;
.super Ljava/lang/Object;
.source "SQLiteCursorInjector.java"


# static fields
.field private static final COUNT_FIELD_NAME:Ljava/lang/String; = "mCount"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calibRowCount(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteCursorInjector;->middle_onMove_calib_count(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V

    return-void
.end method

.method public static middle_onMove_calib_count(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V
    .registers 7

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int v0, v1, v2

    if-gt v0, p3, :cond_18

    const-string/jumbo v1, "mCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method
