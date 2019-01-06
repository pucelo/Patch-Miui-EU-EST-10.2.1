.class Lcom/android/internal/app/PlatLogoActivity$3;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performLongClick()Z

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0

    :cond_27
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_25

    :cond_2d
    return v1
.end method
