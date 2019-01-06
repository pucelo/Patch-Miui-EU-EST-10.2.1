.class final synthetic Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iget v1, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;->-$f0:I

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$-android_hardware_radio_TunerCallbackAdapter_1493(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;->-$f0:I

    iput-object p2, p0, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;->$m$0()V

    return-void
.end method
