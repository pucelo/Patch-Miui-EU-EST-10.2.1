.class Landroid/widget/ColorTextView$1;
.super Ljava/lang/Object;
.source "ColorTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorTextView;


# direct methods
.method constructor <init>(Landroid/widget/ColorTextView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ColorTextView;

    .prologue
    .line 35
    iput-object p1, p0, Landroid/widget/ColorTextView$1;->this$0:Landroid/widget/ColorTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/ColorTextView$1;->this$0:Landroid/widget/ColorTextView;

    invoke-virtual {v0}, Landroid/widget/ColorTextView;->update()V

    .line 39
    return-void
.end method
