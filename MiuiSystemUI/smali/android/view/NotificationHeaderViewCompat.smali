.class public Landroid/view/NotificationHeaderViewCompat;
.super Ljava/lang/Object;
.source "NotificationHeaderViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_0
    return-void
.end method
