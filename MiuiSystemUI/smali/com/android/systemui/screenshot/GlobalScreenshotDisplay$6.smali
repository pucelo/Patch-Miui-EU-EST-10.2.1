.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get20(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1103d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
