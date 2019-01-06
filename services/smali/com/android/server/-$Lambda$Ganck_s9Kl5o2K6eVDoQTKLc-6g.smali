.class final synthetic Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$-com_android_server_ConnectivityService_113645(Landroid/net/Network;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ContextHubSystemService;

    iget-object v1, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ContextHubSystemService;->lambda$-com_android_server_ContextHubSystemService_1237(Landroid/content/Context;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->lambda$-com_android_server_SystemServerInitThreadPool_2249(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->$id:B

    iput-object p2, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;->$m$2()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
