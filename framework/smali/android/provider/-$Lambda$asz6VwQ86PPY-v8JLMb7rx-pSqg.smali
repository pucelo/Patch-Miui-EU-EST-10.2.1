.class final synthetic Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_21192(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_21964(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22246(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22572(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22911(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_23564(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$6()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_24251(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$7()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->lambda$-android_provider_Settings$NameValueCache_72263()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$id:B

    iput-object p2, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$id:B

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$4()V

    return-void

    :pswitch_1f
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$5()V

    return-void

    :pswitch_23
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$6()V

    return-void

    :pswitch_27
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$7()V

    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method
