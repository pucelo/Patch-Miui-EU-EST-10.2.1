.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
    }
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16

    const/4 v8, 0x0

    new-instance v6, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    invoke-direct {v6, p1, p2, p3}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    const/4 v4, 0x0

    sub-int v3, p3, p2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_1d

    invoke-static {v6, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_1c
    const/4 v4, 0x1

    :cond_1d
    if-nez v4, :cond_26

    return-object v8

    :cond_20
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_a

    :cond_26
    instance-of v0, p1, Landroid/text/Spanned;

    iget-object v7, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    invoke-static {v7, v6, v0}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    if-ne v5, v6, :cond_31

    return-object v8

    :cond_31
    if-eqz v0, :cond_39

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_38
    return-object v7

    :cond_39
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_38
.end method
