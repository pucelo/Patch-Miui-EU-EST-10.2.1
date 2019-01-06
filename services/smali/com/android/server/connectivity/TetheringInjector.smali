.class public Lcom/android/server/connectivity/TetheringInjector;
.super Ljava/lang/Object;
.source "TetheringInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetheringInjector$1;,
        Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;
    }
.end annotation


# static fields
.field private static final DISABLE_TETHERING_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Tethering.DisableTetheringAction"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

.field private static sHandler:Landroid/os/Handler;

.field private static sIsRegisted:Z

.field private static sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/server/connectivity/TetheringInjector$1;

    invoke-direct {v0}, Lcom/android/server/connectivity/TetheringInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .registers 3

    sget-object v1, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_25

    :cond_8
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Tethering"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;

    invoke-direct {v1}, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;-><init>()V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public static notificationFinished(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    :cond_c
    return-void
.end method

.method public static setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v5, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v1, p0, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_f
    sget-boolean v5, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    if-nez v5, :cond_24

    sget-object v5, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, v6, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sput-boolean v9, Lcom/android/server/connectivity/TetheringInjector;->sIsRegisted:Z

    :cond_24
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v0, Landroid/app/Notification$Action;

    const v5, 0x11090094

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x11020027

    invoke-direct {v0, v6, v5, v4}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-array v5, v9, [Landroid/app/Notification$Action;

    aput-object v0, v5, v8

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "miui.showAction"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-void
.end method
