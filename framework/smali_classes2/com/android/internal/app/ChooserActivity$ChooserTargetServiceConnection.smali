.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
    }
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private final mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private mConnectedComponent:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v2, :cond_12

    const-string/jumbo v2, "ChooserActivity"

    const-string/jumbo v4, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5f

    monitor-exit v3

    return-void

    :cond_12
    :try_start_12
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_5f

    move-result-object v1

    :try_start_16
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    invoke-interface {v1, v2, v4, v5}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_29} :catch_2b
    .catchall {:try_start_16 .. :try_end_29} :catchall_5f

    :goto_29
    monitor-exit v3

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v2, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_2c .. :try_end_5e} :catchall_5f

    goto :goto_29

    :catchall_5f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v0, :cond_12

    const-string/jumbo v0, "ChooserActivity"

    const-string/jumbo v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_43

    monitor-exit v1

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_43

    monitor-exit v1

    return-void

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    const-string/jumbo v0, "<connection destroyed>"

    goto :goto_29
.end method
