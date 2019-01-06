.class public Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
.super Ljava/lang/Object;
.source "PackageScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
    }
.end annotation


# static fields
.field private static final DAYS_TO_MILLIS:J

.field private static final DEBUG:Z


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mCurrentDays:I

.field private mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

.field private mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalClickCount:I

.field private mTotalShowCount:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateAll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntityData(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntity(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DAYS_TO_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;I)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method private insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " INSERT OR REPLACE INTO notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " (_id, package_name, date, click_count, show_count) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " VALUES((SELECT _id FROM notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " WHERE package_name = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " AND date = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getDailyClick()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getDailyShow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdate Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDateChanged()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DAYS_TO_MILLIS:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget v2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mCurrentDays:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mCurrentDays:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "packageScoreCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDB failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeExpiredData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalPreviousMonthDate()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " DELETE FROM notification_sort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " WHERE date < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "packageScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeExpiredData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "packageScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeExpiredData Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private retrievePackage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-direct {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAll()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->isDateChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->removeExpiredData(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntryData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateLocalData(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "packageScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAll Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDailyData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " SELECT click_count, show_count FROM notification_sort "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " WHERE package_name = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " AND date = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDailyData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setDailyData(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDailyData exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    throw v7
.end method

.method private updateEntity(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->isDataChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method

.method private updateEntityData(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateDailyData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateHistoryData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "packageScoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEntityData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateEntryData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " SELECT package_name, SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " WHERE date < "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " GROUP BY package_name "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "packageScoreCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateEntryData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->onDateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v8, "packageScoreCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateEntryData exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    throw v8
.end method

.method private updateHistoryData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " WHERE package_name = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " AND date < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateHistoryData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setHistoryData(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateHistoryData exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    throw v7
.end method

.method private updateLocalData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " WHERE date < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    :goto_0
    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData click="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", show="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    throw v4
.end method

.method private writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->isDataChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setDataChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeToDatabase Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method


# virtual methods
.method public addClick(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->retrievePackage(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->addClickCount()V

    return-object v0
.end method

.method public addShow(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->retrievePackage(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->addShowCount()V

    return-object v0
.end method

.method public asyncUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public containsPkg(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    return-object v0
.end method

.method public getTotalClickCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    return v0
.end method

.method public getTotalClickCount(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getTotalClick()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalShowCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I

    return v0
.end method

.method public getTotalShowCount(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getTotalShow()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
