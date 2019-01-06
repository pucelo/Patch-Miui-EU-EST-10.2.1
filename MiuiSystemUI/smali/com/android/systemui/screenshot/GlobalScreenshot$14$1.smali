.class Lcom/android/systemui/screenshot/GlobalScreenshot$14$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$14;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$14;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap4(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method
