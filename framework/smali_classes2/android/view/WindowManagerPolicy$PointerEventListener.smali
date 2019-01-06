.class public interface abstract Landroid/view/WindowManagerPolicy$PointerEventListener;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PointerEventListener"
.end annotation


# virtual methods
.method public abstract onPointerEvent(Landroid/view/MotionEvent;)V
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 3

    if-nez p2, :cond_5

    invoke-interface {p0, p1}, Landroid/view/WindowManagerPolicy$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method
