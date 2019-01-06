.class Lcom/android/systemui/RoundedCorners$6;
.super Landroid/content/BroadcastReceiver;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->initRoundCornerWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get9(Lcom/android/systemui/RoundedCorners;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v3}, Lcom/android/systemui/RoundedCorners;->-get9(Lcom/android/systemui/RoundedCorners;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/RoundedCorners;->-wrap0(Lcom/android/systemui/RoundedCorners;I)V

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get2(Lcom/android/systemui/RoundedCorners;)Landroid/database/ContentObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get2(Lcom/android/systemui/RoundedCorners;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "miui.action.handymode_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    const-string/jumbo v1, "handymode"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v4, v1}, Lcom/android/systemui/RoundedCorners;->-set2(Lcom/android/systemui/RoundedCorners;Z)Z

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get8(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get8(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get4(Lcom/android/systemui/RoundedCorners;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get7(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get7(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners$6;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v4}, Lcom/android/systemui/RoundedCorners;->-get4(Lcom/android/systemui/RoundedCorners;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3
.end method
