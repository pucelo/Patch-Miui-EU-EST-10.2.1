.class Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mService:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field final synthetic val$isSystem:Z

.field final synthetic val$servicesBindingTag:Ljava/lang/String;

.field final synthetic val$targetSdkVersion:I

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;IZI)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iput-boolean p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iput p5, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->-wrap2(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get3(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get4(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get4(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get1(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/notification/ManagedServices$1$1;

    iget v3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/notification/ManagedServices$1$1;-><init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_96

    :goto_67
    monitor-exit v1

    return-void

    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->-wrap2(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not rebinding as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "a previous rebind attempt was made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_69 .. :try_end_95} :catchall_96

    goto :goto_67

    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 14

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v10

    :try_start_7
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get4(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get3(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_4c

    :try_start_1d
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    iget v3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iget v6, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    move-object v2, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->-wrap0(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    const/4 v0, 0x0

    invoke-interface {p2, v9, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get2(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_42} :catch_4f
    .catchall {:try_start_1d .. :try_end_42} :catchall_4c

    move-result v7

    :goto_43
    monitor-exit v10

    if-eqz v7, :cond_4b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v0, v9}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_4b
    return-void

    :catchall_4c
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_4f
    move-exception v8

    goto :goto_43
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get3(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->-wrap2(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
