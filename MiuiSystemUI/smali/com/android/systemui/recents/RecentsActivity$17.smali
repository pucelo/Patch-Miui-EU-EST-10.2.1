.class Lcom/android/systemui/recents/RecentsActivity$17;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->endForClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getFreeMemory()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v4}, Lcom/android/systemui/recents/RecentsActivity;->-get6(Lcom/android/systemui/recents/RecentsActivity;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendOneKeyCleanEvent(JJJ)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)J

    move-result-wide v4

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$17;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return-void
.end method
