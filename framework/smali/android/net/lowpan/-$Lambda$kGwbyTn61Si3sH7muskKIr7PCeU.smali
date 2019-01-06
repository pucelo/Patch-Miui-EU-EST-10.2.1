.class final synthetic Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-boolean v1, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f0:Z

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_18705(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-boolean v1, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f0:Z

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_18511(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-boolean v1, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f0:Z

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_18894(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->$id:B

    iput-boolean p2, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f0:Z

    iput-object p3, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;->$m$2()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
