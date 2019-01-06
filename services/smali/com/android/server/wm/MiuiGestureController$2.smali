.class Lcom/android/server/wm/MiuiGestureController$2;
.super Landroid/database/ContentObserver;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get0(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get5(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_9b

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get3(Lcom/android/server/wm/MiuiGestureController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get5(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->-set1(Lcom/android/server/wm/MiuiGestureController;Z)Z

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V

    :cond_5b
    if-nez v0, :cond_9b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get3(Lcom/android/server/wm/MiuiGestureController;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get5(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->-set1(Lcom/android/server/wm/MiuiGestureController;Z)Z

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->-get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V

    :cond_9b
    return-void
.end method
