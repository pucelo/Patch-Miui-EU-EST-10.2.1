.class public final Lcom/android/server/AppOpsServiceState$Callback;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IOpsCallback;

.field volatile mUnLink:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    iput p3, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    :try_start_9
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string/jumbo v1, "AppOpsServiceState"

    const-string/jumbo v2, "linkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    iget v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/AppOpsServiceState;->-wrap0(Lcom/android/server/AppOpsServiceState;I)V

    const-string/jumbo v0, "AppOpsServiceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlinkToDeath()V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method
