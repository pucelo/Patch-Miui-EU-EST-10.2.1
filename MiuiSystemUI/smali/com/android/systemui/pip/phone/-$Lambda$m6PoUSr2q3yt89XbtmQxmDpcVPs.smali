.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->lambda$-com_android_systemui_pip_phone_PipAccessibilityInteractionConnection_3319()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_22540()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_21982()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_11560(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$-com_android_systemui_pip_phone_PipMotionHelper_6808()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$id:B

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-byte v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$m6PoUSr2q3yt89XbtmQxmDpcVPs;->$m$4()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
