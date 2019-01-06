.class final synthetic Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f0:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$-android_telecom_Call_81279(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f0:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$-android_telecom_Call_74131(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f0:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$-android_telecom_Call_73790(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/RemoteConnection;

    iget v2, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f0:I

    invoke-static {v0, v1, v2}, Landroid/telecom/RemoteConnection;->lambda$-android_telecom_RemoteConnection_58084(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$id:B

    iput p2, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f0:I

    iput-object p3, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/telecom/-$Lambda$35vMRSYyUGqYojJbIVkJttSja-M;->$m$3()V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
