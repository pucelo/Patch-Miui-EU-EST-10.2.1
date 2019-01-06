.class final synthetic Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;->-$f1:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;->-$f0:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$-com_android_server_locksettings_SyntheticPasswordManager_14916([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;->-$f0:I

    iput-object p2, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;->$m$0(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method
