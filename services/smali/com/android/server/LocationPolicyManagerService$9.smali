.class Lcom/android/server/LocationPolicyManagerService$9;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_6e

    return v8

    :pswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v2, :cond_2f

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/location/ILocationPolicyListener;

    if-eqz v3, :cond_2a

    :try_start_27
    invoke-interface {v3, v5, v6}, Landroid/location/ILocationPolicyListener;->onUidRulesChanged(II)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_2d
    move-exception v0

    goto :goto_2a

    :cond_2f
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v9

    :pswitch_39
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_5f

    const/4 v4, 0x1

    :goto_3e
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v2, :cond_63

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/location/ILocationPolicyListener;

    if-eqz v3, :cond_5c

    :try_start_59
    invoke-interface {v3, v4}, Landroid/location/ILocationPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_61

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5f
    const/4 v4, 0x0

    goto :goto_3e

    :catch_61
    move-exception v0

    goto :goto_5c

    :cond_63
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v9

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_39
    .end packed-switch
.end method
