.class Lcom/android/server/am/FindDeviceAliveChecker;
.super Ljava/lang/Object;
.source "FindDeviceAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;
    }
.end annotation


# static fields
.field private static final CHECK_FINDDEVICE_DEFAULT_DELAY:J = 0x493e0L

.field private static final SHOW_WARNING_TOAST_INTERVAL:J = 0xea60L

.field private static sCheckFindDeviceHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->checkFindDeviceAlive(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;)V

    sput-object v0, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFindDeviceAlive(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->pingFindDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->showWarningToast(Landroid/content/Context;)V

    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V

    :cond_15
    return-void
.end method

.method private static getAMSContext()Landroid/content/Context;
    .registers 2

    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private static pingFindDevice(Landroid/content/Context;)Z
    .registers 11

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.xiaomi.finddevice.ping.provider/ping"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    :cond_1f
    return v9

    :cond_20
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string/jumbo v1, "Ping! I\'m alive!"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static postCheckFindDeviceAliveDelayed(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "com.xiaomi.finddevice"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/am/FindDeviceAliveChecker;->getAMSContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v2, v3}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V

    return-void
.end method

.method private static postCheckFindDeviceAliveDelayedImmediately(Landroid/content/Context;J)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/server/am/FindDeviceAliveChecker;->sCheckFindDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static showWarningToast(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "FindDevice has been destroyed."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
