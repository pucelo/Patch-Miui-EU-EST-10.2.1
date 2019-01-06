.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3

    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDaemonConnected()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get2(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 36

    const-string/jumbo v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v5, v5, Lcom/android/server/NetworkManagementService;->mMiuiNms:Lcom/android/server/MiuiNetworkManagementService;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/MiuiNetworkManagementService;->filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    return v5

    :cond_21
    sparse-switch p1, :sswitch_data_2b2

    :goto_24
    const/4 v5, 0x0

    return v5

    :sswitch_26
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3a

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_40

    :cond_3a
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_40
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_58
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_70
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_98

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap11(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    return v5

    :cond_98
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_c0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    return v5

    :cond_c0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_c6
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_da

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e0

    :cond_da
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e0
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap12(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_fb
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_101
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_115

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_11b

    :cond_115
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11b
    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_156

    const/4 v5, 0x4

    :try_start_125
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_138

    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/lang/NumberFormatException; {:try_start_125 .. :try_end_137} :catch_2ae

    move-result v10

    :cond_138
    :goto_138
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v22, :cond_15b

    const/4 v7, 0x3

    :goto_150
    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;IIJIZ)V

    const/4 v5, 0x1

    return v5

    :cond_156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_138

    :cond_15b
    const/4 v7, 0x1

    goto :goto_150

    :sswitch_15d
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_171

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_177

    :cond_171
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_177
    const/4 v5, 0x4

    aget-object v20, p3, v5

    const/4 v5, 0x5

    :try_start_17b
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    new-instance v4, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v4, v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_194
    .catch Ljava/lang/NumberFormatException; {:try_start_17b .. :try_end_194} :catch_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17b .. :try_end_194} :catch_1ab

    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    :goto_1a9
    const/4 v5, 0x1

    return v5

    :catch_1ab
    move-exception v13

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1b2
    move-exception v14

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1b9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_1a9

    :sswitch_1c3
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_200

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_200

    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_200

    const/4 v5, 0x4

    :try_start_1e2
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1e7
    .catch Ljava/lang/NumberFormatException; {:try_start_1e2 .. :try_end_1e7} :catch_202

    move-result-wide v24

    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v28

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    :cond_200
    const/4 v5, 0x1

    return v5

    :catch_202
    move-exception v14

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_209
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21b

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_221

    :cond_21b
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_221
    const/16 v31, 0x0

    const/4 v12, 0x0

    const/16 v30, 0x1

    const/16 v19, 0x4

    :goto_228
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_260

    if-eqz v30, :cond_260

    aget-object v5, p3, v19

    const-string/jumbo v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_248

    if-nez v12, :cond_245

    add-int/lit8 v5, v19, 0x1

    aget-object v12, p3, v5

    :goto_242
    add-int/lit8 v19, v19, 0x2

    goto :goto_228

    :cond_245
    const/16 v30, 0x0

    goto :goto_242

    :cond_248
    aget-object v5, p3, v19

    const-string/jumbo v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25d

    if-nez v31, :cond_25a

    add-int/lit8 v5, v19, 0x1

    aget-object v31, p3, v5

    goto :goto_242

    :cond_25a
    const/16 v30, 0x0

    goto :goto_242

    :cond_25d
    const/16 v30, 0x0

    goto :goto_242

    :cond_260
    if-eqz v30, :cond_28a

    const/16 v18, 0x0

    if-eqz v31, :cond_26a

    :try_start_266
    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    :cond_26a
    new-instance v26, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap13(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_287
    .catch Ljava/lang/IllegalArgumentException; {:try_start_266 .. :try_end_287} :catch_289

    const/4 v5, 0x1

    return v5

    :catch_289
    move-exception v13

    :cond_28a
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_290
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    :try_start_29e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_2a9
    .catch Landroid/os/RemoteException; {:try_start_29e .. :try_end_2a9} :catch_2ab

    goto/16 :goto_24

    :catch_2ab
    move-exception v21

    goto/16 :goto_24

    :catch_2ae
    move-exception v23

    goto/16 :goto_138

    nop

    :sswitch_data_2b2
    .sparse-switch
        0x258 -> :sswitch_26
        0x259 -> :sswitch_c6
        0x265 -> :sswitch_101
        0x266 -> :sswitch_15d
        0x267 -> :sswitch_1c3
        0x268 -> :sswitch_209
        0x269 -> :sswitch_290
    .end sparse-switch
.end method
