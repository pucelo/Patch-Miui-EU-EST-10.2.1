.class public Lcom/android/server/VibratorServiceInjector;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorServiceInjector$MyContextWrapper;,
        Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;,
        Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;,
        Lcom/android/server/VibratorServiceInjector$ProcessObserver;,
        Lcom/android/server/VibratorServiceInjector$SettingsObserver;,
        Lcom/android/server/VibratorServiceInjector$VibrationInfo;,
        Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ACTIVITY_CHANGED:I = 0x3

.field private static final MESSAGE_ADD_VIBRATION_LOG:I = 0x4

.field private static final MESSAGE_NOTIFICATION_POST:I = 0x2

.field private static final MESSAGE_UPDATE_SETTINGS:I = 0x5

.field private static final MESSAGE_VIBRATE:I = 0x1

.field private static final NOTIFICATION_VIBRATION_TIME_RATE:J = 0x3a98L

.field private static final NOTIFICATION_VIBRATION_TIME_THRESHOLD:J = 0x2bcL

.field private static final TAG:Ljava/lang/String; = "VibratorServiceInjector"

.field private static VIBRATION_THRESHOLD_IN_CALL:J = 0x0L

.field private static final VIBRATION_TIME_DELAY:J = 0x4bL

.field private static sContext:Landroid/content/Context;

.field private static sForegroundUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIncall:Z

.field private static sListener:Landroid/telephony/PhoneStateListener;

.field private static final sLock:Ljava/lang/Object;

.field private static sNotificationVibrationInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sVibrationsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorServiceInjector$VibrationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sVibrationsLimitPerPkg:I

.field private static sVibratorService:Lcom/android/server/VibratorService;

.field private static sWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4()I
    .registers 1

    sget v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsLimitPerPkg:I

    return v0
.end method

.method static synthetic -get5()Lcom/android/server/VibratorService;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sVibratorService:Lcom/android/server/VibratorService;

    return-object v0
.end method

.method static synthetic -get6()Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    .registers 1

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    return p0
.end method

.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->initHandler()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    const/16 v0, 0xa

    sput v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsLimitPerPkg:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    const/4 v0, 0x4

    iput v0, v6, Landroid/os/Message;->what:I

    new-instance v0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;-><init>(Landroid/os/VibrationEffect;IILjava/lang/String;Z)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static dumpVibrations(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    sget-object v5, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    const-string/jumbo v4, "Previous vibrations of per Pkg:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    const-string/jumbo v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    goto :goto_23

    :catchall_3d
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_40
    monitor-exit v5

    return-void
.end method

.method public static init(Lcom/android/server/VibratorService;Landroid/content/Context;)V
    .registers 10

    const/4 v7, -0x1

    sput-object p1, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/VibratorServiceInjector;->sVibratorService:Lcom/android/server/VibratorService;

    new-instance v1, Lcom/android/server/VibratorServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/VibratorServiceInjector$1;-><init>()V

    new-instance v2, Lcom/android/server/VibratorServiceInjector$MyContextWrapper;

    invoke-direct {v2, p1}, Lcom/android/server/VibratorServiceInjector$MyContextWrapper;-><init>(Landroid/content/Context;)V

    :try_start_f
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/server/VibratorService;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/VibratorServiceInjector$ProcessObserver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/VibratorServiceInjector$ProcessObserver;-><init>(Lcom/android/server/VibratorServiceInjector$ProcessObserver;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_27} :catch_46

    :goto_27
    sget-object v3, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/VibratorServiceInjector$SettingsObserver;

    sget-object v6, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-direct {v5, v6}, Lcom/android/server/VibratorServiceInjector$SettingsObserver;-><init>(Landroid/os/Handler;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v3, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendEmptyMessage(I)Z

    return-void

    :catch_46
    move-exception v0

    const-string/jumbo v3, "VibratorServiceInjector"

    const-string/jumbo v4, "Cannot register listener"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method private static initHandler()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "vibrator-injector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    return-void
.end method

.method public static listenForCallState(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/android/server/VibratorServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/VibratorServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static shouldVibrateForMiui(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p3, v1, :cond_8

    const/4 v1, 0x5

    if-ne p3, v1, :cond_c

    :cond_8
    invoke-static {p5}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    :cond_c
    if-nez v0, :cond_f

    return-object v2

    :cond_f
    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_23
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/VibratorServiceInjector;->addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-object p2

    :cond_27
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->-wrap0(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;

    move-result-object p2

    :cond_31
    if-eqz p2, :cond_36

    invoke-static {p2, p3, p0, p1}, Lcom/android/server/VibratorServiceInjector;->addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V

    :cond_36
    return-object p2
.end method

.method private static updateSettings()V
    .registers 5

    sget-object v3, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "default_input_method"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_28

    sget-object v2, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit v3

    return-void

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static weakenVibrationIfNecessary(JI)J
    .registers 5

    sget-boolean v0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    if-eqz v0, :cond_12

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    sget-wide p0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    :cond_12
    return-wide p0
.end method
