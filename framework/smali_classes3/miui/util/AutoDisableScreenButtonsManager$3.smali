.class Lmiui/util/AutoDisableScreenButtonsManager$3;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap1(Lmiui/util/AutoDisableScreenButtonsManager;)Z

    move-result v0

    return-void
.end method
