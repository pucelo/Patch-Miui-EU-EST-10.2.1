.class Lcom/android/server/wm/MiuiGesturePointerEventListener$3$1;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/MiuiGesturePointerEventListener$3;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3$1;->this$1:Lcom/android/server/wm/MiuiGesturePointerEventListener$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3$1;->this$1:Lcom/android/server/wm/MiuiGesturePointerEventListener$3;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void
.end method
