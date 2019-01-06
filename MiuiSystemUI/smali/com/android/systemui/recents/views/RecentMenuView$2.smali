.class Lcom/android/systemui/recents/views/RecentMenuView$2;
.super Ljava/lang/Object;
.source "RecentMenuView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentMenuView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get3(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get0(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get0(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapCompat;->isConfigHardware(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get0(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get3(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v3

    sub-float v4, v6, v2

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get0(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMask()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView$2;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/RecentMenuView;->-get3(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
