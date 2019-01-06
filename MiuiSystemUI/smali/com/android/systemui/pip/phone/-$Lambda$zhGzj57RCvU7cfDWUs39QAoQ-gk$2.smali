.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_7648(Landroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_7944(Landroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_8280(Landroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$3(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteAction;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_18856(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$id:B

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-byte v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$m$0(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$m$1(Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$m$2(Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;->$m$3(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
