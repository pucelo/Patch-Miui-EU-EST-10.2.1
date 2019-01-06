.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5339(Z)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$-com_android_systemui_pip_phone_PipMotionHelper_5900(Z)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->$id:B

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f0:Z

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-byte v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
