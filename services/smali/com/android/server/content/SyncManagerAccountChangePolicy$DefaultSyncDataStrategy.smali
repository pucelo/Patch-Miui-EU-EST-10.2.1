.class Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSyncDataStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v5, "num_syncs"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "com.miui.browser"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-ltz v4, :cond_20

    const/16 v5, 0x8

    if-ge v4, v5, :cond_20

    return v10

    :cond_1a
    if-ltz v4, :cond_20

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    return v10

    :cond_20
    const-string/jumbo v5, "interactive"

    invoke-virtual {p3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    return v11

    :cond_2a
    const-string/jumbo v5, "last_screen_off_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x1d4c0

    cmp-long v5, v6, v8

    if-gez v5, :cond_40

    return v11

    :cond_40
    const-string/jumbo v5, "battery_charging"

    invoke-virtual {p3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4a

    return v11

    :cond_4a
    return v10
.end method
