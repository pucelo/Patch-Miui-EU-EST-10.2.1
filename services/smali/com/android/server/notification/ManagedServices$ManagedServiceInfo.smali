.class public Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagedServiceInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public connection:Landroid/content/ServiceConnection;

.field public isSystem:Z

.field public service:Landroid/os/IInterface;

.field public targetSdkVersion:I

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    iput-boolean p5, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    iput-object p6, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iput p7, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->-wrap1(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    return-void
.end method

.method public enabledAndUserMatches(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v1, :cond_14

    return v2

    :cond_14
    if-eq p1, v3, :cond_1a

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne p1, v1, :cond_1b

    :cond_1a
    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-get5(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isPermittedForProfile(I)Z

    move-result v0

    :cond_31
    return v0
.end method

.method public getOwner()Lcom/android/server/notification/ManagedServices;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    return-object v0
.end method

.method public isEnabledForCurrentProfiles()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGuest(Lcom/android/server/notification/ManagedServices;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPermittedForProfile(I)Z
    .registers 7

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-get5(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public supportsProfiles()Z
    .registers 3

    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ManagedServiceInfo["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",targetSdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",connection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_64

    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    const-string/jumbo v0, "<connection>"

    goto :goto_48
.end method
