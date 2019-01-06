.class public Landroid/app/Vr2dDisplayProperties$Builder;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Vr2dDisplayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddedFlags:I

.field private mDpi:I

.field private mHeight:I

.field private mRemovedFlags:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iput v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    return-void
.end method


# virtual methods
.method public addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4

    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    return-object p0
.end method

.method public build()Landroid/app/Vr2dDisplayProperties;
    .registers 8

    new-instance v0, Landroid/app/Vr2dDisplayProperties;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iget v2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iget v3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    iget v4, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iget v5, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIIILandroid/app/Vr2dDisplayProperties;)V

    return-object v0
.end method

.method public removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4

    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    return-object p0
.end method

.method public setDimensions(III)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 4

    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iput p2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iput p3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    return-object p0
.end method

.method public setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    goto :goto_6
.end method
