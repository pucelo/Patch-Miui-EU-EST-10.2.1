.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;
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

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_3592(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_12481(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_4598(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_3272(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->lambda$-com_android_server_autofill_ui_FillUi$AutofillWindowPresenter_13643(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$id:B

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;->$m$4()V

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method
