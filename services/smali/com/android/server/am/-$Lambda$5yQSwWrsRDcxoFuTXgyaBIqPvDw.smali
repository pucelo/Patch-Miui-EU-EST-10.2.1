.class final synthetic Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f0:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->lambda$-com_android_server_am_ActivityStackSupervisor_123732(IZ)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserController$3;

    iget v1, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f0:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController$3;->lambda$-com_android_server_am_UserController$3_21524(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(BZILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->$id:B

    iput-boolean p2, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f0:Z

    iput p3, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f1:I

    iput-object p4, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
