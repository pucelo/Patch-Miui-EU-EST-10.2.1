.class Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(I)I

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->stopSelf()V

    :cond_0
    return-void
.end method
