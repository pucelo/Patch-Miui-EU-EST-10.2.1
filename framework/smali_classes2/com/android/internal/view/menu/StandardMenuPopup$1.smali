.class Lcom/android/internal/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->isModal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    :cond_26
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    goto :goto_2b
.end method
