.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_6292(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/IPinnedStackController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_4925(Landroid/view/IPinnedStackController;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivity;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_11522(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->$id:B

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-byte v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
