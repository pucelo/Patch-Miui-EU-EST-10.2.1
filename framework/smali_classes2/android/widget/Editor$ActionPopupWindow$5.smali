.class Landroid/widget/Editor$ActionPopupWindow$5;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;

.field final synthetic val$maximum:I

.field final synthetic val$minimum:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;II)V
    .registers 4

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$5;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iput p2, p0, Landroid/widget/Editor$ActionPopupWindow$5;->val$maximum:I

    iput p3, p0, Landroid/widget/Editor$ActionPopupWindow$5;->val$minimum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow$5;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/Editor$ActionPopupWindow$5;->val$maximum:I

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    check-cast v1, Landroid/text/Editable;

    iget v2, p0, Landroid/widget/Editor$ActionPopupWindow$5;->val$minimum:I

    iget v3, p0, Landroid/widget/Editor$ActionPopupWindow$5;->val$maximum:I

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method
