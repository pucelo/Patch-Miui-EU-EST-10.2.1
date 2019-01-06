.class public Lcom/android/systemui/recents/misc/RecentsPushEventHelper;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"


# static fields
.field private static mLastBottomStackPkg:Ljava/lang/String;

.field private static mLastTopStackPkg:Ljava/lang/String;

.field private static sMultiWindowPushEventId:Ljava/lang/String;

.field private static sRecentsPushEventId:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastBottomStackPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastTopStackPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sMultiWindowPushEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sRecentsPushEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastBottomStackPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastTopStackPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sMultiWindowPushEventId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sRecentsPushEventId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendClickRecommendCardEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "cardClick"

    invoke-static {v0, p0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEnterRecentsEvent(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendOneKeyCleanEvent(JJJ)V
    .locals 8

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;-><init>(JJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendShowRecommendCardEvent(Z)V
    .locals 2

    const-string/jumbo v1, "cardShow"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "show"

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "hide"

    goto :goto_0
.end method

.method public static sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "switchType"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "taskPosition"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "switchApp"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendTaskStackChangedEvent()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$3;

    invoke-direct {v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
