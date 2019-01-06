.class final Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;
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
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    iput p2, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    if-lt v1, v3, :cond_e

    iget v3, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_f

    if-gt v1, v3, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2

    :catch_f
    move-exception v0

    return v2
.end method
