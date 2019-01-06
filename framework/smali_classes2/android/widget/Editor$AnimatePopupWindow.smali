.class Landroid/widget/Editor$AnimatePopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatePopupWindow"
.end annotation


# instance fields
.field private mDismissing:Z

.field private mFader:Landroid/widget/Editor$Fader;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-nez v0, :cond_13

    const v0, 0x110d0004

    invoke-virtual {p0, v0}, Landroid/widget/Editor$AnimatePopupWindow;->setAnimationStyle(I)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$AnimatePopupWindow;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    :cond_10
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->fadeOut()V

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    invoke-virtual {p0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    goto :goto_1e
.end method

.method public isDismissing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    return v0
.end method

.method public setFader(Landroid/widget/Editor$Fader;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0, p3, p4}, Landroid/widget/Editor$Fader;->fadeIn(II)V

    :cond_18
    return-void
.end method

.method public update(IIII)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0, p2}, Landroid/widget/Editor$Fader;->setY(I)V

    :cond_f
    return-void
.end method
