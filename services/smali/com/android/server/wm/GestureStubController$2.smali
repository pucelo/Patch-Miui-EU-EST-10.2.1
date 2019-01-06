.class Lcom/android/server/wm/GestureStubController$2;
.super Landroid/view/IGestureStubListener$Stub;
.source "GestureStubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/GestureStubController;->getGestureStubListener()Landroid/view/IGestureStubListener;
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

    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-direct {p0}, Landroid/view/IGestureStubListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureFinish(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-static {v0, p1}, Lcom/android/server/wm/GestureStubController;->-wrap0(Lcom/android/server/wm/GestureStubController;Z)V

    return-void
.end method

.method public onGestureReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->-wrap1(Lcom/android/server/wm/GestureStubController;)V

    return-void
.end method

.method public onGestureStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->-wrap2(Lcom/android/server/wm/GestureStubController;)V

    return-void
.end method

.method public skipAppTransition()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->-wrap3(Lcom/android/server/wm/GestureStubController;)V

    return-void
.end method
