.class final synthetic Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->lambda$-android_view_SurfaceView_32286()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->-android_view_SurfaceView-mthref-0()V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->-android_view_View-mthref-0()V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->-android_view_View-mthref-1()V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->-android_view_ViewRootImpl-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$id:B

    iput-object p2, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;->$m$4()V

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
