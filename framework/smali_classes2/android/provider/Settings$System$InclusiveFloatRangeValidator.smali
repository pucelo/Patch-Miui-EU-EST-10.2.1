.class final Landroid/provider/Settings$System$InclusiveFloatRangeValidator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    iput p2, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget v3, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_12

    iget v3, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_13

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2

    :catch_13
    move-exception v0

    return v2
.end method
