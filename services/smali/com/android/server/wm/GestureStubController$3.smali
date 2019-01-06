.class Lcom/android/server/wm/GestureStubController$3;
.super Ljava/lang/Object;
.source "GestureStubController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/GestureStubController;->lambda$-com_android_server_wm_GestureStubController_4233(Lcom/android/server/wm/WindowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/GestureStubController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/GestureStubController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$3;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$3;->this$0:Lcom/android/server/wm/GestureStubController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/GestureStubController;->-set0(Lcom/android/server/wm/GestureStubController;Z)Z

    return-void
.end method
