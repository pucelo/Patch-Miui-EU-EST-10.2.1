.class public Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMenuItem"
.end annotation


# instance fields
.field mContentDescription:Ljava/lang/String;

.field mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

.field mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->setIcon(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGutsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    return-object v0
.end method

.method public setIcon(Landroid/content/Context;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    const v3, 0x7f0702cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setAlpha(F)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
