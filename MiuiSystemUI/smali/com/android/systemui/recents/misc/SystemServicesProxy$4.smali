.class Lcom/android/systemui/recents/misc/SystemServicesProxy$4;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
