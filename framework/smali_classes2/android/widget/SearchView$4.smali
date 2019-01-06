.class Landroid/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1, p1, p2, p3}, Landroid/widget/SearchView;->-wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_2c
    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->-wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5f

    const/16 v1, 0x42

    if-ne p2, v1, :cond_5f

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v4, v2}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_5f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8f

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v2, v3}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_8f
    return v3
.end method
