.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private static synthetic -getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method private static getIcon(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const v0, 0x10807a6

    :goto_6
    return v0

    :cond_7
    const v0, 0x10807a2

    goto :goto_6
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :try_start_b
    aget-object v3, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object v3

    :catch_e
    move-exception v0

    const v3, 0x10403c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const-string/jumbo v1, "UNKNOWN"

    goto :goto_a
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return v2

    :cond_4
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager;->-getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    return v2

    :pswitch_12
    const/4 v0, 0x4

    return v0

    :pswitch_14
    const/4 v0, 0x3

    return v0

    :pswitch_16
    const/4 v0, 0x2

    return v0

    :pswitch_18
    const/4 v0, 0x1

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "ConnectivityNotification:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_c

    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "clearing notification tag=%s event=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2c
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v0, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_33} :catch_39

    :goto_33
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void

    :catch_39
    move-exception v1

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to clear notification tag=%s event=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_18

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object v0, p0

    move v1, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto :goto_17
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 32

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    if-eqz p3, :cond_27

    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v20

    if-nez v20, :cond_2a

    return-void

    :cond_27
    const/16 v19, 0x0

    const/4 v8, 0x0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v20

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6f

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "ignoring notification %s for network %s with existing notification %s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p2, v22, v23

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const/16 v23, 0x2

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "showNotification tag=%s event=%s transport=%s extraInfo=%s highPrioriy=%s"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    const/16 v23, 0x3

    aput-object v8, v22, v23

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    move-result v10

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b9

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x10406c7

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const v20, 0x10406c8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_e4
    if-eqz p6, :cond_306

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    :goto_e8
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v21

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30a

    const/16 v20, 0x1

    :goto_10d
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x1060161

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30e

    new-instance v20, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_16e
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_186

    new-instance v20, Landroid/app/Notification$TvExtender;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification$TvExtender;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    :cond_186
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_313

    :try_start_19f
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_313

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p5 .. p5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/connectivity/NetworkNotificationManagerInjector;->showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1b8
    .catch Ljava/lang/NullPointerException; {:try_start_19f .. :try_end_1b8} :catch_326

    :goto_1b8
    return-void

    :cond_1b9
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1f1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f1

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x10406c7

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const v20, 0x10406c8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    :cond_1f1
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_291

    packed-switch v19, :pswitch_data_336

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x10403c0

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    const v21, 0x10403c1

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    :pswitch_232
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x10406bd

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    const v21, 0x10403c1

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    :pswitch_268
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x10403c0

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    :cond_291
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2d9

    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const v21, 0x10403c4

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    const v21, 0x10403c5

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    :cond_2d9
    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unknown notification type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " on network transport "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_306
    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    goto/16 :goto_e8

    :cond_30a
    const/16 v20, 0x0

    goto/16 :goto_10d

    :cond_30e
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_16e

    :cond_313
    :try_start_313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v7, v11, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_324
    .catch Ljava/lang/NullPointerException; {:try_start_313 .. :try_end_324} :catch_326

    goto/16 :goto_1b8

    :catch_326
    move-exception v12

    sget-object v20, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "setNotificationVisible: visible notificationManager error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b8

    nop

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_268
        :pswitch_232
    .end packed-switch
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    const v5, 0x10403c6

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
