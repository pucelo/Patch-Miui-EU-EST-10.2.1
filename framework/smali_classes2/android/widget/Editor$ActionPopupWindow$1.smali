.class Landroid/widget/Editor$ActionPopupWindow$1;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$ActionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2e

    const-string/jumbo v1, "Editor"

    const-string/jumbo v2, "Unrecognised message received."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void

    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/translationservice/provider/TranslationResult;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->-get0(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_e

    :pswitch_23
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->-get0(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_e

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_23
    .end packed-switch
.end method
