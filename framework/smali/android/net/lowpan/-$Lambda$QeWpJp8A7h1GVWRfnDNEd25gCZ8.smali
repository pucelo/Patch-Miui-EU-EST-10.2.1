.class final synthetic Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->lambda$-android_net_lowpan_LowpanCommissioningSession_4529()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanScanner$Callback;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner$1;->lambda$-android_net_lowpan_LowpanScanner$1_6441(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanScanner$Callback;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner$2;->lambda$-android_net_lowpan_LowpanScanner$2_9089(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->$id:B

    iput-object p2, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;->$m$2()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
