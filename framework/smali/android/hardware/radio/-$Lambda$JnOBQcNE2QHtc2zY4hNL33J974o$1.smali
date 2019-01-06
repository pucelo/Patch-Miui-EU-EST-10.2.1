.class final synthetic Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;
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

    iget-object v0, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$-android_hardware_radio_TunerCallbackAdapter_1643(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$-android_hardware_radio_TunerCallbackAdapter_1927(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->$id:B

    iput-object p2, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
