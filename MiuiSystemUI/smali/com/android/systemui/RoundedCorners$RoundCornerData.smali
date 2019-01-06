.class Lcom/android/systemui/RoundedCorners$RoundCornerData;
.super Ljava/lang/Object;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/RoundedCorners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RoundCornerData"
.end annotation


# instance fields
.field backgroundRes:I

.field gravity:I

.field height:I

.field width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->gravity:I

    iput p2, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->width:I

    iput p3, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->height:I

    iput p4, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->backgroundRes:I

    return-void
.end method
