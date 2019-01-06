.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/TypefaceUtils$FontsWhiteListHolder;,
        Lmiui/util/TypefaceUtils$Holder;
    }
.end annotation


# static fields
.field private static final MIUI_TYPEFACE_FAMILY:Ljava/lang/String; = "miui"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->usingMiuiFonts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz p1, :cond_21

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_21
    if-nez p1, :cond_2d

    const/4 v1, 0x0

    :goto_24
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->-get0()[Landroid/graphics/Typeface;

    move-result-object v2

    aget-object v0, v2, v1

    :cond_2a
    if-nez v0, :cond_32

    :goto_2c
    return-object p1

    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_24

    :cond_32
    move-object p1, v0

    goto :goto_2c
.end method

.method public static usingMiuiFonts(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-static {}, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->-get0()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
