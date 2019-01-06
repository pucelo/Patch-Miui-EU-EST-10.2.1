.class Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;
.super Landroid/view/View;
.source "ToastOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/ToastOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToastOverlayLayout"
.end annotation


# instance fields
.field private mLastToastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mToastX:I

.field private mToastY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mLastToastRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastX:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastY:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mLastToastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mLastToastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mLastToastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public setLocation(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastX:I

    iput p2, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mToastY:I

    return-void
.end method

.method public setToast(Landroid/widget/Toast;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->mLastToastRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
