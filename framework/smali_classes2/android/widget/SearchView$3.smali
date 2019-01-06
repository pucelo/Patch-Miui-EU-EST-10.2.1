.class Landroid/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get3(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-wrap7(Landroid/widget/SearchView;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get0(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-wrap6(Landroid/widget/SearchView;)V

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get1(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-wrap8(Landroid/widget/SearchView;)V

    goto :goto_d

    :cond_2a
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get7(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_38

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-wrap10(Landroid/widget/SearchView;)V

    goto :goto_d

    :cond_38
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-wrap4(Landroid/widget/SearchView;)V

    goto :goto_d
.end method
