.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0, v1, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap2(Lcom/android/systemui/screenshot/GlobalScreenshot;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "quit_thumbnail"

    const-string/jumbo v2, "timeout"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
