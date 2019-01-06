.class final synthetic Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->-android_widget_SelectionActionModeHelper-mthref-4(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->-android_widget_SelectionActionModeHelper-mthref-2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
