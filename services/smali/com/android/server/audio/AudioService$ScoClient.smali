.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    return-void
.end method

.method private requestScoState(II)V
    .registers 12

    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap14(Lcom/android/server/audio/AudioService;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$ScoClient;->totalCount()I

    move-result v1

    if-nez v1, :cond_e2

    const/16 v1, 0xc

    if-ne p1, v1, :cond_149

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v8}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    if-ne v1, v3, :cond_142

    :cond_40
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_142

    :cond_51
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_135

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p2}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_b6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bluetooth_sco_channel_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-gt v1, v8, :cond_b0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-gez v1, :cond_b6

    :cond_b0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    :cond_b6
    :goto_b6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_126

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_ed

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    :cond_d9
    :goto_d9
    if-eqz v0, :cond_11f

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_e1
    .catchall {:try_start_1f .. :try_end_e1} :catchall_ea

    :cond_e1
    :goto_e1
    monitor-exit v2

    :cond_e2
    :goto_e2
    return-void

    :cond_e3
    :try_start_e3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_ea

    goto :goto_b6

    :catchall_ea
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_ed
    :try_start_ed
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_106

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_d9

    :cond_106
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v8, :cond_d9

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_d9

    :cond_11f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V

    goto :goto_e1

    :cond_126
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap0(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    goto :goto_e1

    :cond_135
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V

    goto :goto_e1

    :cond_142
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V
    :try_end_148
    .catchall {:try_start_ed .. :try_end_148} :catchall_ea

    goto :goto_e1

    :cond_149
    const/16 v1, 0xa

    if-ne p1, v1, :cond_e2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v2, :cond_15d

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_e2

    :cond_15d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v2, :cond_1d8

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_1c8

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1c8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_196

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    :cond_188
    :goto_188
    if-nez v0, :cond_e2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_e2

    :cond_196
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_1af

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_188

    :cond_1af
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v8, :cond_188

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_188

    :cond_1c8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap0(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    goto/16 :goto_e2

    :cond_1d8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_e2
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_27

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_35

    :goto_25
    monitor-exit v2

    return-void

    :cond_27
    const/4 v1, 0x1

    :try_start_28
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_35

    goto :goto_25

    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearCount(Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_43

    if-eqz v1, :cond_11

    :try_start_b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_43

    :cond_11
    :goto_11
    const/4 v1, 0x0

    :try_start_12
    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-eqz p1, :cond_1c

    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_43

    :cond_1c
    monitor-exit v2

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string/jumbo v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_43

    goto :goto_11

    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public decCount()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_16

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2d

    :goto_14
    monitor-exit v2

    return-void

    :cond_16
    :try_start_16
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2d

    if-nez v1, :cond_26

    :try_start_20
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_20 .. :try_end_26} :catch_30
    .catchall {:try_start_20 .. :try_end_26} :catchall_2d

    :cond_26
    :goto_26
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_29
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_14

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_30
    move-exception v0

    :try_start_31
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2d

    goto :goto_26
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    const/16 v1, 0xc

    :try_start_9
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V

    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_43

    if-nez v1, :cond_16

    :try_start_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_1e
    .catchall {:try_start_10 .. :try_end_16} :catchall_43

    :cond_16
    :goto_16
    :try_start_16
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_43

    monitor-exit v2

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string/jumbo v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_43

    goto :goto_16

    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public totalCount()I
    .registers 6

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_29

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getCount()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_29
    monitor-exit v4

    return v0

    :catchall_2b
    move-exception v3

    monitor-exit v4

    throw v3
.end method
