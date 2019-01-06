.class final synthetic Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$-com_android_server_locksettings_SyntheticPasswordManager_12018(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->$m$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method
