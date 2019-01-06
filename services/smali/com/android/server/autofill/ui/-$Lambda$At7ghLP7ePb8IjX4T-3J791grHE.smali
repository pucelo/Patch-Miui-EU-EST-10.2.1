.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/FillUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$-com_android_server_autofill_ui_FillUi_5115(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$-com_android_server_autofill_ui_SaveUi_10978(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->$id:B

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->$m$0(Landroid/view/View;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;->$m$1(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
