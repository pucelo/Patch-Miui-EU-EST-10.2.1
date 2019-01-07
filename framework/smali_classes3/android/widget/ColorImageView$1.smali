.class Landroid/widget/ColorImageView$1;
.super Ljava/lang/Object;
.source "ColorImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorImageView;


# direct methods
.method constructor <init>(Landroid/widget/ColorImageView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ColorImageView;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/widget/ColorImageView$1;->this$0:Landroid/widget/ColorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/ColorImageView$1;->this$0:Landroid/widget/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ColorImageView;->update()V

    .line 44
    return-void
.end method
