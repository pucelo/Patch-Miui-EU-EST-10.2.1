.class public final Lmiui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$BaseNotifier;,
        Lmiui/maml/NotifierManager$BroadcastNotifier;,
        Lmiui/maml/NotifierManager$ContentChangeNotifier;,
        Lmiui/maml/NotifierManager$MobileDataNotifier;,
        Lmiui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lmiui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String;

.field public static TYPE_TIME_CHANGED:Ljava/lang/String;

.field public static TYPE_WIFI_STATE:Ljava/lang/String;

.field private static sInstance:Lmiui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    const-string/jumbo v0, "MobileData"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    const-string/jumbo v0, "WifiState"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    const-string/jumbo v0, "TimeChanged"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lmiui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {v0, p1}, Lmiui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2f
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v1, v5

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v0

    :cond_4f
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    aput-object v2, v1, v4

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v0

    :cond_69
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;
    .registers 3

    const-class v1, Lmiui/maml/NotifierManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/maml/NotifierManager;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    :cond_e
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;
    .registers 4

    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 8

    sget-boolean v2, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "NotifierManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireNotifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_31
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;

    move-object v1, v0

    if-nez v1, :cond_4f

    iget-object v2, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lmiui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_54

    move-result-object v1

    if-nez v1, :cond_47

    monitor-exit v3

    return-void

    :cond_47
    :try_start_47
    invoke-virtual {v1}, Lmiui/maml/NotifierManager$BaseNotifier;->init()V

    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_54

    :cond_4f
    monitor-exit v3

    invoke-virtual {v1, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void

    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->pauseListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->pause()V

    :cond_10
    return-void
.end method

.method public releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 7

    sget-boolean v1, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_30
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_4f

    if-nez v0, :cond_3c

    monitor-exit v2

    return-void

    :cond_3c
    :try_start_3c
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->getRef()I

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->finish()V

    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4f

    :cond_4d
    monitor-exit v2

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    move-result-object v0

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->resumeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method
