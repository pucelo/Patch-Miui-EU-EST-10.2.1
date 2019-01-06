.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreGlobalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateController"
.end annotation


# instance fields
.field private mStateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSize:I


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->isAllStateReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->changeStateReady(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->reset()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateSize:I

    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateSize:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateMap:Landroid/util/SparseArray;

    return-void
.end method

.method private changeStateReady(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private isAllStateReady()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->mStateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
