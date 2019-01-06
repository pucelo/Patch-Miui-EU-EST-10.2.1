.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x1d

    invoke-static {v0, v2, p1, v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    move-result v0

    if-eqz v0, :cond_1a

    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/clipboard/ClipboardService;->-wrap4(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x1d

    invoke-static {v2, v4, p1, v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_2c

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    monitor-exit p0

    return-object v1

    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_2a

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2c

    move-result-object v1

    :cond_2a
    monitor-exit p0

    return-object v1

    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x1d

    invoke-static {v3, v5, p1, v4}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_3c

    move-result v3

    if-eqz v3, :cond_1a

    :cond_18
    monitor-exit p0

    return v2

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_3a

    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_3c

    move-result v3

    if-lez v3, :cond_38

    const/4 v2, 0x1

    :cond_38
    monitor-exit p0

    return v2

    :cond_3a
    monitor-exit p0

    return v2

    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x1d

    invoke-static {v1, v3, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_27

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    monitor-exit p0

    return v0

    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_27

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    const-string/jumbo v1, "clipboard"

    const-string/jumbo v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 16

    monitor-enter p0

    if-eqz p1, :cond_15

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-gtz v10, :cond_15

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "No items"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v10

    :goto_13
    monitor-exit p0

    throw v10

    :cond_15
    const/4 v10, 0x0

    :try_start_16
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_3e

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get1(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/HostClipboardMonitor;

    move-result-object v10

    if-eqz v10, :cond_3e

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get1(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/HostClipboardMonitor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    :cond_3e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v11, 0x1e

    invoke-static {v10, v11, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_12

    move-result v10

    if-nez v10, :cond_4e

    monitor-exit p0

    return-void

    :cond_4e
    :try_start_4e
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap5(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, v9}, Lcom/android/server/clipboard/ClipboardService;->-wrap3(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap6(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v10, v3, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v10, v9}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_e5

    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_12

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_e5

    const/4 v1, 0x0

    :try_start_77
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get2(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/IUserManager;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "no_cross_profile_copy_paste"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_87} :catch_a8
    .catchall {:try_start_77 .. :try_end_87} :catchall_12

    move-result v10

    xor-int/lit8 v1, v10, 0x1

    :goto_8a
    if-nez v1, :cond_c4

    const/4 p1, 0x0

    :goto_8d
    const/4 v5, 0x0

    :goto_8e
    if-ge v5, v8, :cond_e5

    :try_start_90
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v9, :cond_a5

    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v11, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v11, v6}, Lcom/android/server/clipboard/ClipboardService;->-wrap3(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v11

    invoke-virtual {v10, v11, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    :cond_a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    :catch_a8
    move-exception v4

    const-string/jumbo v10, "ClipboardService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Remote Exception calling UserManager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :cond_c4
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V
    :try_end_c9
    .catchall {:try_start_90 .. :try_end_c9} :catchall_12

    :try_start_c9
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    :goto_cf
    if-ltz v5, :cond_e0

    new-instance v10, Landroid/content/ClipData$Item;

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v2, v5, v10}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_cf

    :cond_e0
    invoke-virtual {v2, v9}, Landroid/content/ClipData;->fixUrisLight(I)V
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_e7

    move-object p1, v2

    goto :goto_8d

    :cond_e5
    monitor-exit p0

    return-void

    :catchall_e7
    move-exception v10

    move-object p1, v2

    goto/16 :goto_13
.end method
