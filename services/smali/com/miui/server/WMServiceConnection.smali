.class public Lcom/miui/server/WMServiceConnection;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/WMServiceConnection$1;,
        Lcom/miui/server/WMServiceConnection$2;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.miui.wmsvc.LINK"

.field private static final BIND_DELAY:I = 0xea60

.field private static final MAX_DEATH_COUNT_IN_ONE_DAY:I = 0x3

.field private static final MAX_DEATH_COUNT_IN_TOTAL:I = 0xa

.field private static final ONE_DAY_IN_MILLISECONDS:I = 0x5265c00

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.wmsvc"

.field private static final TAG:Ljava/lang/String; = "WMServiceConnection"


# instance fields
.field private mBindRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDeathTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/miui/server/WMServiceConnection;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/WMServiceConnection;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/server/WMServiceConnection;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->shouldBind()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/WMServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/WMServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bind()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/server/WMServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$1;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/server/WMServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$2;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    return-void
.end method

.method private bind()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.wmsvc.LINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.wmsvc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "WMServiceConnection"

    const-string/jumbo v3, "Bind Inspector success!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void

    :cond_21
    const-string/jumbo v2, "WMServiceConnection"

    const-string/jumbo v3, "Bind Inspector failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "WMServiceConnection"

    const-string/jumbo v3, "Bind Inspector failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private bindDelay()V
    .registers 5

    const-string/jumbo v0, "WMServiceConnection"

    const-string/jumbo v1, "schedule bind in 60000ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldBind()Z
    .registers 10

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Secure;->isHttpInvokeAppEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "WMServiceConnection"

    const-string/jumbo v5, "Cancel bind for http invoke disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_17
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    if-eqz v4, :cond_25

    const-string/jumbo v4, "WMServiceConnection"

    const-string/jumbo v5, "Cancel bind for connected"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_25
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_39

    const-string/jumbo v4, "WMServiceConnection"

    const-string/jumbo v5, "Cancel bind for MAX_DEATH_COUNT_IN_TOTAL reached"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_39
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7e

    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7e

    const-string/jumbo v4, "WMServiceConnection"

    const-string/jumbo v5, "Cancel bind for MAX_DEATH_COUNT_IN_ONE_DAY reached"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v8

    :cond_7e
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iput-object p2, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_9
    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_1b

    :goto_11
    const-string/jumbo v1, "WMServiceConnection"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "WMServiceConnection"

    const-string/jumbo v2, "linkToDeath failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    const-string/jumbo v0, "WMServiceConnection"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_15
    return-void
.end method
