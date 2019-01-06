.class final synthetic Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/app/admin/PasswordMetrics;

    iget v2, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f0:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$-com_android_server_locksettings_LockSettingsService_84353(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f0:I

    iput-object p2, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;->$m$0()V

    return-void
.end method
