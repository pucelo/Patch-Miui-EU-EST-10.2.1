.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "finish_longscreenshot"

    const-string/jumbo v2, "button_click"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
