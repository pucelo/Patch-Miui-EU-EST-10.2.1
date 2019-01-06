.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .registers 2

    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    return-object v4

    :cond_b
    if-lt p1, v2, :cond_e

    return-object v4

    :cond_e
    move v1, p1

    if-gez p1, :cond_12

    const/4 v1, 0x0

    :cond_12
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    if-ne v1, v5, :cond_12

    return-object v4

    :cond_23
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v5, :cond_2c

    return-object v4

    :cond_2c
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_16
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 3

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public preceding(I)[I
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    return-object v4

    :cond_b
    if-gtz p1, :cond_e

    return-object v4

    :cond_e
    move v0, p1

    if-le p1, v2, :cond_12

    move v0, v2

    :cond_12
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v5, :cond_12

    return-object v4

    :cond_23
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    if-ne v1, v5, :cond_2c

    return-object v4

    :cond_2c
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
