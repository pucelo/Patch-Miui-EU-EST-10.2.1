.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->show(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/NotifyMediaStoreData;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$thumbnailH:I

.field final synthetic val$thumbnailW:I

.field final synthetic val$thumbnailX:I

.field final synthetic val$thumbnailY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailX:I

    iput p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailY:I

    iput p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailW:I

    iput p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0703f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aget v2, v6, v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailX:I

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailY:I

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailW:I

    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->val$thumbnailH:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;IIIII)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
