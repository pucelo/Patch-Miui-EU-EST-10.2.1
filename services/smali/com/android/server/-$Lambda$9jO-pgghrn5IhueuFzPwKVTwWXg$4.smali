.class final synthetic Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:J


# direct methods
.method private final synthetic $m$0(Landroid/net/INetworkManagementEventObserver;)V
    .registers 6

    iget v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f1:I

    iget-boolean v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f0:Z

    iget-wide v2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f2:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_21618(IZJLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(ZIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f0:Z

    iput p2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f1:I

    iput-wide p3, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->-$f2:J

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;->$m$0(Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
