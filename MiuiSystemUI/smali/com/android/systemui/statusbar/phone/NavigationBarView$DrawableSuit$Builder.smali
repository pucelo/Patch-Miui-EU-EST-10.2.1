.class public Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
.super Ljava/lang/Object;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBack:I

.field private mBackAlt:I

.field private mBgColorRes:I

.field private mBgLand:I

.field private mBgLandCTS:I

.field private mBgPort:I

.field private mBgPortCTS:I

.field private mContext:Landroid/content/Context;

.field private mHome:I

.field private mRecent:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801db

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    const v0, 0x7f0801df

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    const v0, 0x7f0801f0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    const v0, 0x7f0801fb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    const v0, 0x7f0801e5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    const v0, 0x7f0801e8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    const v0, 0x7f0600b8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
    .locals 3

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBack:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBackAlt:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mHome:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mRecent:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPort:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLand:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPortCTS:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLandCTS:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgColor:I

    return-object v1
.end method

.method setBack(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    return-object p0
.end method

.method setBackAlt(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    return-object p0
.end method

.method setBgColorRes(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    return-object p0
.end method

.method setBgLand(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    return-object p0
.end method

.method setBgLandCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    return-object p0
.end method

.method setBgPort(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    return-object p0
.end method

.method setBgPortCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    return-object p0
.end method

.method setHome(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    return-object p0
.end method

.method setRecent(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    return-object p0
.end method
