.class public final Landroid/app/PictureInPictureArgs;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureArgs$1;,
        Landroid/app/PictureInPictureArgs$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PictureInPictureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mSourceRectHintInsets:Landroid/graphics/Rect;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/PictureInPictureArgs$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureArgs$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs;->setAspectRatio(F)V

    invoke-virtual {p0, p2}, Landroid/app/PictureInPictureArgs;->setActions(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :cond_40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    iput-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iput-object p3, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static convert(Landroid/app/PictureInPictureParams;)Landroid/app/PictureInPictureArgs;
    .registers 5

    new-instance v0, Landroid/app/PictureInPictureArgs;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static convert(Landroid/app/PictureInPictureArgs;)Landroid/app/PictureInPictureParams;
    .registers 5

    new-instance v0, Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public copyOnlySet(Landroid/app/PictureInPictureArgs;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    :cond_a
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_14
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :cond_25
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()F
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatioRational()Landroid/util/Rational;
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getSourceRectHint()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSourceRectHintInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSetActions()Z
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSetAspectRatio()Z
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSourceBoundsHint()Z
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasSourceBoundsHintInsets()Z
    .registers 2

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_7

    iput-object v1, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_7
    if-eqz p1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_10
    return-void
.end method

.method public setAspectRatio(F)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/Rational;

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const v2, 0x3b9aca00

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_5
.end method

.method public setSourceRectHintInsets(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    goto :goto_5
.end method

.method public truncateActions(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iget-object v1, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_34

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_38

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :goto_27
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_3c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    return-void

    :cond_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    :cond_38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    :cond_3c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33
.end method
