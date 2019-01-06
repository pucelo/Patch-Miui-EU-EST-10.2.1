.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-nez v2, :cond_f

    const-string/jumbo v2, "AllCapsTransformationMethod"

    const-string/jumbo v3, "Caller did not enable length changes; not transforming text"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_f
    if-nez p1, :cond_12

    return-object v3

    :cond_12
    const/4 v1, 0x0

    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_1d

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    :cond_1d
    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    :cond_21
    instance-of v0, p1, Landroid/text/Spanned;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    return-void
.end method
