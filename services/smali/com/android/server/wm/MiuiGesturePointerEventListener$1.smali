.class Lcom/android/server/wm/MiuiGesturePointerEventListener$1;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "unregister inputConsumer after recents animating end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap9(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void
.end method
