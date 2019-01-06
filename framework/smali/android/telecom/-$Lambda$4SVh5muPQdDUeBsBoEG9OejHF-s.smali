.class final synthetic Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->lambda$-android_telecom_Connection_105297(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->lambda$-android_telecom_Connection_104063(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->lambda$-android_telecom_Connection_104986(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$id:B

    iput-object p2, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
