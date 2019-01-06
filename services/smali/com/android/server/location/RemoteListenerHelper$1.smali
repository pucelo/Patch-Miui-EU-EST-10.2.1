.class Lcom/android/server/location/RemoteListenerHelper$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->-get1(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->-set0(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    :cond_13
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->-get1(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->-get0(Lcom/android/server/location/RemoteListenerHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1$1;-><init>(Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    return-void
.end method
