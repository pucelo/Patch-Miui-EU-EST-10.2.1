.class final synthetic Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->-android_app_Dialog-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->lambda$-android_app_EnterTransitionCoordinator_8442()V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->-android_app_Fragment-mthref-0()V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/FragmentTransition;->lambda$-android_app_FragmentTransition_16724(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-2(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-0(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$6()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-1(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$7()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$-android_app_LoadedApk$ReceiverDispatcher$Args_52651()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$id:B

    iput-object p2, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$id:B

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$4()V

    return-void

    :pswitch_1f
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$5()V

    return-void

    :pswitch_23
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$6()V

    return-void

    :pswitch_27
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$7()V

    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method
