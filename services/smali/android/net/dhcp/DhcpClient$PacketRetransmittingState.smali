.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;
    }
.end annotation


# instance fields
.field private mIsScreenOn:Z

.field private mMessagerTimer:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method static synthetic -set0(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    return p1
.end method

.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    new-instance v0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;-><init>(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initScreenState()V
    .registers 4

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    return-void
.end method

.method private registBroadcastReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->registBroadcastReceiver()V

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initScreenState()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    return-void
.end method

.method public exit()V
    .registers 3

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;I)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get23(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    return-void
.end method

.method protected initTimer()V
    .registers 2

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    const/16 v0, 0xc8

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    return-void
.end method

.method protected jitterTimer(I)I
    .registers 6

    div-int/lit8 v1, p1, 0xa

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v0, v2, v1

    add-int v2, p1, v0

    return v2
.end method

.method protected maybeInitTimeout()V
    .registers 7

    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    if-lez v2, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    int-to-long v4, v4

    add-long v0, v2, v4

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get23(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    :cond_16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    const/4 v0, 0x0

    return v0

    :pswitch_b
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    return v1

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    return v1

    :pswitch_1a
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    return v1

    :pswitch_data_1e
    .packed-switch 0x30065
        :pswitch_b
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .registers 12

    const v10, 0x1f400

    iget-boolean v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    if-eqz v6, :cond_1d

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    int-to-long v8, v7

    const v7, 0x30065

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/dhcp/DhcpClient;->sendMessageDelayed(IJ)V

    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    if-ge v6, v10, :cond_1c

    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    invoke-virtual {p0, v6}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    move-result v6

    int-to-long v4, v6

    add-long v0, v2, v4

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    if-le v6, v10, :cond_1c

    iput v10, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    goto :goto_1c
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .registers 1

    return-void
.end method
