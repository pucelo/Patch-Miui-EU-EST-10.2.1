.class final synthetic Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/app/VrManager$CallbackEntry$1;

    iget-boolean v1, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f0:Z

    invoke-virtual {v0, v1}, Landroid/app/VrManager$CallbackEntry$1;->lambda$-android_app_VrManager$CallbackEntry$1_902(Z)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/app/VrManager$CallbackEntry$2;

    iget-boolean v1, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f0:Z

    invoke-virtual {v0, v1}, Landroid/app/VrManager$CallbackEntry$2;->lambda$-android_app_VrManager$CallbackEntry$2_1220(Z)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->$id:B

    iput-boolean p2, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f0:Z

    iput-object p3, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
