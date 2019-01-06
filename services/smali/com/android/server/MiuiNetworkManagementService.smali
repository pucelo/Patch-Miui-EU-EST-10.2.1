.class public Lcom/android/server/MiuiNetworkManagementService;
.super Ljava/lang/Object;
.source "MiuiNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;
    }
.end annotation


# static fields
.field private static final MIUI_FIREWALL_RESPONSE_CODE:I = 0x2bb

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"

.field private static sInstance:Lcom/android/server/MiuiNetworkManagementService;


# instance fields
.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private mListenedIdleTimerLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static Init(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)Lcom/android/server/MiuiNetworkManagementService;
    .registers 3

    new-instance v0, Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MiuiNetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V

    sput-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/MiuiNetworkManagementService;
    .registers 1

    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method


# virtual methods
.method public addMiuiFirewallSharedUid(I)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "add_shared_uid"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_25} :catch_26

    return v7

    :catch_26
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "addMiuiFirewallSharedUid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public enableIptablesRestore(Z)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "iprestore"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_27

    const-string/jumbo v1, "enable"

    :goto_20
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    return v7

    :cond_27
    const-string/jumbo v1, "disable"
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public enableLimitter(Z)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "limitter"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_27

    const-string/jumbo v1, "enable"

    :goto_20
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    return v7

    :cond_27
    const-string/jumbo v1, "disable"
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public enableWmmer(Z)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "wmmer"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_27

    const-string/jumbo v1, "enable"

    :goto_20
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    return v7

    :cond_27
    const-string/jumbo v1, "disable"
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    sparse-switch p1, :sswitch_data_b0

    const/4 v0, 0x0

    return v0

    :sswitch_5
    array-length v0, p3

    const/4 v1, 0x4

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string/jumbo v1, "IfaceClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid event from daemon "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    return v0

    :cond_3e
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    array-length v0, p3

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6f

    const/4 v0, 0x4

    :try_start_46
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    array-length v0, p3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_57

    const/4 v0, 0x5

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_56} :catch_ad

    move-result v2

    :cond_57
    :goto_57
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;->uidDataActivityChanged(Ljava/lang/String;IZJ)V

    :cond_6d
    const/4 v0, 0x1

    return v0

    :cond_6f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    goto :goto_57

    :sswitch_74
    array-length v0, p3

    const/4 v1, 0x3

    if-lt v0, v1, :cond_86

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string/jumbo v1, "miuiFirewall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_88

    :cond_86
    const/4 v0, 0x0

    return v0

    :cond_88
    const/4 v0, 0x2

    aget-object v8, p3, v0

    if-eqz v8, :cond_ab

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.FIREWALL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "pkg"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "com.miui.permission.FIREWALL"

    invoke-virtual {v0, v6, v1, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_ab
    const/4 v0, 0x1

    return v0

    :catch_ad
    move-exception v7

    goto :goto_57

    nop

    :sswitch_data_b0
    .sparse-switch
        0x265 -> :sswitch_5
        0x2bb -> :sswitch_74
    .end sparse-switch
.end method

.method public listenUidDataActivity(IILjava/lang/String;IZ)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "listen"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object p3, v4, v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v4, v5

    if-eqz p5, :cond_46

    const-string/jumbo v1, "enable"

    :goto_38
    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_3e} :catch_4a

    if-eqz p5, :cond_56

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_45
    return v7

    :cond_46
    :try_start_46
    const-string/jumbo v1, "disable"
    :try_end_49
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_38

    :catch_4a
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_56
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_45
.end method

.method public setCurrentNetworkState(I)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "net_state"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_25} :catch_26

    return v7

    :catch_26
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "setCurrentNetworkState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public setLimit(ZJ)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "limit"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_2e

    const-string/jumbo v1, "en"

    :goto_20
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    return v7

    :cond_2e
    const-string/jumbo v1, "dis"
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_31} :catch_32

    goto :goto_20

    :catch_32
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_pkg_rule"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_36} :catch_37

    return v7

    :catch_37
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "setMiuiFirewallRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    return-void
.end method

.method public updateIface(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateiface"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_21} :catch_27

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mListenedIdleTimerLabels:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v7

    :catch_27
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public updateWmm(II)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updatewmm"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_2c} :catch_2d

    return v7

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public whiteListUid(IZ)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "whitelist"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    if-eqz p2, :cond_2e

    const-string/jumbo v1, "add"

    :goto_27
    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    return v7

    :cond_2e
    const-string/jumbo v1, "rmv"
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_31} :catch_32

    goto :goto_27

    :catch_32
    move-exception v0

    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method
