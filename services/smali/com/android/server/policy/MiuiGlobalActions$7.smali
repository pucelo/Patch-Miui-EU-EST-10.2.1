.class Lcom/android/server/policy/MiuiGlobalActions$7;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions;->showDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->-get2(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string/jumbo v1, "finish"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    return v2

    :cond_1b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2c

    :cond_2b
    return v2

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method
