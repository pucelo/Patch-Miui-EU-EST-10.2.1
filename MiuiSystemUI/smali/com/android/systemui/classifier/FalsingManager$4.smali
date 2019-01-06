.class Lcom/android/systemui/classifier/FalsingManager$4;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;

.field final synthetic val$enabled:I

.field final synthetic val$here:Ljava/lang/Throwable;

.field final synthetic val$screenOn:I

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$4;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    iput p2, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$enabled:I

    iput p3, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$screenOn:I

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$state:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$here:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x2f

    const-string/jumbo v3, "isFalseTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Session did not become active after query for a false touch."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$enabled:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$4;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->-wrap0(Lcom/android/systemui/classifier/FalsingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " mScreenOn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$screenOn:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager$4;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v4}, Lcom/android/systemui/classifier/FalsingManager;->-get0(Lcom/android/systemui/classifier/FalsingManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager$4;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->-get2(Lcom/android/systemui/classifier/FalsingManager;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". Look for warnings ~1000ms earlier to see root cause."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager$4;->val$here:Ljava/lang/Throwable;

    invoke-static {v3, v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
