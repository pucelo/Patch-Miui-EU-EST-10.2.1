.class final synthetic Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;
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

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->lambda$-android_app_ActivityTransitionCoordinator_27512(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityTransitionState;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionState;->lambda$-android_app_ActivityTransitionState_12157(Landroid/app/Activity;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$-android_app_EnterTransitionCoordinator$3_17809(Landroid/os/Bundle;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$-android_app_EnterTransitionCoordinator$3_17761(Landroid/os/Bundle;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->lambda$-android_app_EnterTransitionCoordinator_6436(Landroid/util/ArrayMap;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/ExitTransitionCoordinator;->lambda$-android_app_ExitTransitionCoordinator_6391(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$id:B

    iput-object p2, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$id:B

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$4()V

    return-void

    :pswitch_1f
    invoke-direct {p0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;->$m$5()V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method
