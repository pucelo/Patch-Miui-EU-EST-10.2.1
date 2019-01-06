.class final synthetic Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;IIIIIIII)V
    .registers 20

    iget-object v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/widget/PopupWindow;->lambda$-android_widget_PopupWindow_9628(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/view/View;IIIIIIII)V
    .registers 20

    iget-object v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/widget/PopupWindow;->lambda$-android_widget_PopupWindow_9628(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    iget-byte v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct/range {p0 .. p9}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->$m$0(Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_f
    invoke-direct/range {p0 .. p9}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;->$m$1(Landroid/view/View;IIIIIIII)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
