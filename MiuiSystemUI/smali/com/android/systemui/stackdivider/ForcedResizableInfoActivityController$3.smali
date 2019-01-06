.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4, v5, v6}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4, v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-set0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
