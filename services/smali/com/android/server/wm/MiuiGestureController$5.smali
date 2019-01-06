.class Lcom/android/server/wm/MiuiGestureController$5;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGestureController;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$5;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_19
    return-void
.end method
