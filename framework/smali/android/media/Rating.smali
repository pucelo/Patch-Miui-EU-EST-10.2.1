.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    return-void
.end method

.method synthetic constructor <init>(IFLandroid/media/Rating;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static newHeartRating(Z)Landroid/media/Rating;
    .registers 4

    new-instance v1, Landroid/media/Rating;

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static newPercentageRating(F)Landroid/media/Rating;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_16

    :cond_b
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_16
    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/media/Rating;
    .registers 7

    const/4 v4, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_4a

    const-string/jumbo v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid rating style ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for a star rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_28
    const/high16 v0, 0x40400000    # 3.0f

    :goto_2a
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_33

    cmpl-float v1, p1, v0

    if-lez v1, :cond_43

    :cond_33
    const-string/jumbo v1, "Rating"

    const-string/jumbo v2, "Trying to set out of range star-based rating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_3d
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_2a

    :pswitch_40
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_2a

    :cond_43
    new-instance v1, Landroid/media/Rating;

    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    nop

    :pswitch_data_4a
    .packed-switch 0x3
        :pswitch_28
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/media/Rating;
    .registers 4

    new-instance v1, Landroid/media/Rating;

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static newUnratedRating(I)Landroid/media/Rating;
    .registers 3

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    :cond_d
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_10
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0
.end method

.method public getRatingStyle()I
    .registers 2

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :pswitch_8
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/Rating;->mRatingStyle:I

    if-eq v2, v0, :cond_7

    return v1

    :cond_7
    iget v2, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public isRated()Z
    .registers 3

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isThumbUp()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2c

    const-string/jumbo v0, "unrated"

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
