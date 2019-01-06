.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "VrManagerService"

    invoke-static {v8, v9, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v8

    if-nez v8, :cond_10

    return-void

    :cond_10
    const-string/jumbo v8, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get9(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_db

    const-string/jumbo v8, "allowed"

    :goto_2d
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Persistent VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get7(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_e0

    const-string/jumbo v8, "enabled"

    :goto_4f
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Currently bound VR listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    if-nez v8, :cond_e5

    const-string/jumbo v8, "None"

    :goto_71
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Currently bound VR compositor service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    if-nez v8, :cond_f5

    const-string/jumbo v8, "None"

    :goto_93
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "Previous state transitions:\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  "

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, p2}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    const-string/jumbo v8, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    :goto_bd
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_104

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_d9

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d9
    move v2, v1

    goto :goto_bd

    :cond_db
    const-string/jumbo v8, "disallowed"

    goto/16 :goto_2d

    :cond_e0
    const-string/jumbo v8, "disabled"

    goto/16 :goto_4f

    :cond_e5
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_71

    :cond_f5
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_93

    :cond_104
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v8, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    :goto_11e
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_13c

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_13a

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13a
    move v2, v1

    goto :goto_11e

    :cond_13c
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "Installed VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get4(Lcom/android/server/vr/VrManagerService;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_169

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_19a

    :cond_169
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16f
    const-string/jumbo v8, "Enabled VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_187

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_1b5

    :cond_187
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18d
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_19a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19e

    :cond_1b5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b9
.end method

.method public getPersistentVrModeEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public getVr2dDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrModeState()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap1(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public setAndBindCompositor(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    if-nez p1, :cond_17

    :goto_13
    invoke-static {v1, v0}, Lcom/android/server/vr/VrManagerService;->-wrap19(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    return-void

    :cond_17
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_13
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap21(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap15(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap14(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method
