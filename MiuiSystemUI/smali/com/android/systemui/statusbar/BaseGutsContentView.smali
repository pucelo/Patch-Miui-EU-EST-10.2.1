.class public abstract Lcom/android/systemui/statusbar/BaseGutsContentView;
.super Landroid/widget/LinearLayout;
.source "BaseGutsContentView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseGutsContentView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method
