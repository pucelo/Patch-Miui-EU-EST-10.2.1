.class final synthetic Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f2:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanScanner$Callback;

    iget v1, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f0:I

    iget v2, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f1:I

    invoke-static {v0, v1, v2}, Landroid/net/lowpan/LowpanScanner$2;->lambda$-android_net_lowpan_LowpanScanner$2_8042(Landroid/net/lowpan/LowpanScanner$Callback;II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f0:I

    iput p2, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f1:I

    iput-object p3, p0, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;->$m$0()V

    return-void
.end method
