.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap0()Landroid/util/TimingsTraceLog;

    move-result-object v11

    const-string/jumbo v13, "nfc"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v7

    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    const-string/jumbo v13, "bluetooth_manager"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    if-eqz v7, :cond_192

    :try_start_27
    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_195

    const/4 v8, 0x1

    :goto_2f
    if-nez v8, :cond_45

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Turning off NFC..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_198

    :cond_45
    :goto_45
    if-eqz v2, :cond_1a5

    :try_start_47
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_1a8

    const/4 v3, 0x1

    :goto_50
    if-nez v3, :cond_72

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Disabling Bluetooth..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-get4(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v2, v13, v14}, Landroid/bluetooth/IBluetoothManager;->disable(Ljava/lang/String;Z)Z
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_72} :catch_1ab

    :cond_72
    :goto_72
    if-eqz v9, :cond_1b8

    :try_start_74
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v13

    xor-int/lit8 v10, v13, 0x1

    :goto_7a
    if-nez v10, :cond_8f

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Turning off cellular radios..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_8f} :catch_1bb

    :cond_8f
    :goto_8f
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    :goto_a2
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_191

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Z

    move-result v13

    if-eqz v13, :cond_d1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-long v14, v13

    sub-long/2addr v14, v4

    long-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4028000000000000L    # 12.0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v12, v14

    add-int/lit8 v12, v12, 0x6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Lcom/android/server/power/ShutdownThread;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lcom/android/server/power/ShutdownThread;->-wrap4(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_d1
    if-nez v3, :cond_110

    :try_start_d3
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_e3

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_de} :catch_1d6

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_1c8

    :cond_e3
    const/4 v3, 0x1

    :goto_e4
    if-eqz v3, :cond_110

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Bluetooth turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    const-string/jumbo v14, "ShutdownBt"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_110
    if-nez v10, :cond_144

    :try_start_112
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_115} :catch_1e3

    move-result v13

    xor-int/lit8 v10, v13, 0x1

    :goto_118
    if-eqz v10, :cond_144

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Radio turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    const-string/jumbo v14, "ShutdownRadio"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_144
    if-nez v8, :cond_17a

    :try_start_146
    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_149} :catch_1f3

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1f0

    const/4 v8, 0x1

    :goto_14e
    if-eqz v8, :cond_17a

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "NFC turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    const-string/jumbo v14, "ShutdownNfc"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_17a
    if-eqz v10, :cond_200

    if-eqz v3, :cond_200

    if-eqz v8, :cond_200

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-boolean v14, v13, v15

    :cond_191
    return-void

    :cond_192
    const/4 v8, 0x1

    goto/16 :goto_2f

    :cond_195
    const/4 v8, 0x0

    goto/16 :goto_2f

    :catch_198
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x1

    goto/16 :goto_45

    :cond_1a5
    const/4 v3, 0x1

    goto/16 :goto_50

    :cond_1a8
    const/4 v3, 0x0

    goto/16 :goto_50

    :catch_1ab
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    goto/16 :goto_72

    :cond_1b8
    const/4 v10, 0x1

    goto/16 :goto_7a

    :catch_1bb
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    goto/16 :goto_8f

    :cond_1c8
    :try_start_1c8
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_1cb
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1cb} :catch_1d6

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_1d3

    const/4 v3, 0x1

    goto/16 :goto_e4

    :cond_1d3
    const/4 v3, 0x0

    goto/16 :goto_e4

    :catch_1d6
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    goto/16 :goto_e4

    :catch_1e3
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    goto/16 :goto_118

    :cond_1f0
    const/4 v8, 0x0

    goto/16 :goto_14e

    :catch_1f3
    move-exception v6

    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x1

    goto/16 :goto_14e

    :cond_200
    const-wide/16 v14, 0xfa

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    goto/16 :goto_a2
.end method
