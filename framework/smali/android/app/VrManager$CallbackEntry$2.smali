.class Landroid/app/VrManager$CallbackEntry$2;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager$CallbackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/VrManager$CallbackEntry;


# direct methods
.method constructor <init>(Landroid/app/VrManager$CallbackEntry;)V
    .registers 2

    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$2;->this$1:Landroid/app/VrManager$CallbackEntry;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_app_VrManager$CallbackEntry$2_1220(Z)V
    .registers 3

    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$1:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    invoke-virtual {v0, p1}, Landroid/app/VrStateCallback;->onPersistentVrStateChanged(Z)V

    return-void
.end method

.method public onPersistentVrStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$1:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
