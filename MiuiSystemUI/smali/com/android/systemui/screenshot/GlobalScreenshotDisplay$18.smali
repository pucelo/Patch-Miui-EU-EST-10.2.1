.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->clickActionBtn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$btnType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    return-void
.end method
