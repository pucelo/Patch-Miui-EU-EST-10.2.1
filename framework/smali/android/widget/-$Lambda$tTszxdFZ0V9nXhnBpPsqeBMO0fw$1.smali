.class final synthetic Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-android_widget_SelectionActionModeHelper-mthref-3(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-android_widget_SelectionActionModeHelper-mthref-0(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-android_widget_SelectionActionModeHelper-mthref-1(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-byte v0, p0, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->$m$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;->$m$2()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
