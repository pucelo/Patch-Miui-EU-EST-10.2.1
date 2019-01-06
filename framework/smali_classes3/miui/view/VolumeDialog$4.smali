.class Lmiui/view/VolumeDialog$4;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private final sliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$row:Lmiui/view/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/VolumeDialog$4;->this$0:Lmiui/view/VolumeDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    if-nez v0, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    iput-boolean v3, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    :cond_26
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_4f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    :cond_4f
    iput-boolean v2, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    :cond_51
    return v3

    :cond_52
    return v2
.end method
