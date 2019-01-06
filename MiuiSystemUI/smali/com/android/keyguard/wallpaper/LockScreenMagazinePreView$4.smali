.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setSettingButtonTouchDelegate(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

.field final synthetic val$expandTouchWidth:I

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$expandTouchWidth:I

    iput-object p4, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$expandTouchWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$expandTouchWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$expandTouchWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$expandTouchWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$parentView:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;->val$view:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
