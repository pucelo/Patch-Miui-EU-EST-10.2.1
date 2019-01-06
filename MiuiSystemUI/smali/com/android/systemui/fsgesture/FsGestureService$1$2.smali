.class Lcom/android/systemui/fsgesture/FsGestureService$1$2;
.super Ljava/lang/Object;
.source "FsGestureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureService$1;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fsgesture/FsGestureService$1;

.field final synthetic val$callback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

.field final synthetic val$callbackKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureService$1;Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->this$1:Lcom/android/systemui/fsgesture/FsGestureService$1;

    iput-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->val$callbackKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->val$callback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->this$1:Lcom/android/systemui/fsgesture/FsGestureService$1;

    iget-object v0, v0, Lcom/android/systemui/fsgesture/FsGestureService$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureService;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->val$callbackKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureService$1$2;->val$callback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->unRegisterFsGestureCall(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    return-void
.end method
