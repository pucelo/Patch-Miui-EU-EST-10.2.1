.class Lmiui/util/AutoDisableScreenButtonsManager$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iput-boolean p2, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    iget-boolean v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-get2(Lmiui/util/AutoDisableScreenButtonsManager;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    :cond_13
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    :cond_24
    :goto_24
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    invoke-static {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->-set0(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z

    return-void

    :cond_2c
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap0(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/util/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4f

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    goto :goto_24

    :cond_4f
    if-ne v1, v4, :cond_24

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap3(Lmiui/util/AutoDisableScreenButtonsManager;)V

    goto :goto_24
.end method
