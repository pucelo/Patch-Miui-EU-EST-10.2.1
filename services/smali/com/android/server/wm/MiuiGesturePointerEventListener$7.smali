.class Lcom/android/server/wm/MiuiGesturePointerEventListener$7;
.super Lcom/android/server/wm/MiuiInputEventReceiver;
.source "MiuiGesturePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->registerInputConsumer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$7;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/MiuiInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/wm/MiuiInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method
