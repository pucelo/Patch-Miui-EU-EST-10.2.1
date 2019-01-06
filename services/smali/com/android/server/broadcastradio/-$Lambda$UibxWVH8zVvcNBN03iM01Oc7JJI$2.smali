.class final synthetic Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    iget v1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;->-$f0:I

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_2499(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;->-$f0:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;->$m$0()V

    return-void
.end method
