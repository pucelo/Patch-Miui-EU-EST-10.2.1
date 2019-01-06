.class final Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendOneKeyCleanEvent(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$freeAtFirst:J

.field final synthetic val$freeAtLast:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtFirst:J

    iput-wide p3, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtLast:J

    iput-wide p5, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "freeMemoryBeforeClean"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtFirst:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "freeMemoryAfterClean"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtLast:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "totalMemory"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$total:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "oneKeyCleanStart"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
