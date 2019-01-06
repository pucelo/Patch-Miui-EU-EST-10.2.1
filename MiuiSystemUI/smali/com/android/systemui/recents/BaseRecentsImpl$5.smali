.class Lcom/android/systemui/recents/BaseRecentsImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get5(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v3, v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "force_fsg_nav_bar"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get0(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RecentsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "navstubview will be added: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v5, v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set5(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get14(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get13(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap1(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "RecentsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "navstubview will be removed: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get14(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set5(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap2(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap0(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0
.end method
