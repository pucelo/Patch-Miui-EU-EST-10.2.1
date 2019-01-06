.class public Lmiui/provider/AppCornerProviderHelper;
.super Ljava/lang/Object;
.source "AppCornerProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_7
    sget-object v1, Lmiui/provider/AppCornerProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_38

    move-result v1

    if-ge v1, v9, :cond_25

    :cond_1e
    const/4 v6, 0x1

    :goto_1f
    if-eqz v7, :cond_24

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_24
    return v6

    :cond_25
    :try_start_25
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_38

    move-result v8

    if-ne v8, v9, :cond_36

    const/4 v6, 0x1

    goto :goto_1f

    :cond_36
    const/4 v6, 0x0

    goto :goto_1f

    :catchall_38
    move-exception v1

    if-eqz v7, :cond_3e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v1
.end method
