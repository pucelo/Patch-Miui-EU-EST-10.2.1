.class final synthetic Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->-android_widget_PopupWindow-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->-android_widget_PopupWindow-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    iget-byte v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
