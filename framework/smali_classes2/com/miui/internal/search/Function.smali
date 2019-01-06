.class public interface abstract Lcom/miui/internal/search/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/Function$Intent;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_ORIGIN:Ljava/lang/String; = "category_origin"

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final FUNCTIONS:[Ljava/lang/String;

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final IS_CHECKBOX:Ljava/lang/String; = "is_checkbox"

.field public static final IS_OLDMAN:Ljava/lang/String; = "is_oldman"

.field public static final KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PARENT:Ljava/lang/String; = "parent"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final SECOND_SPACE:Ljava/lang/String; = "second_space"

.field public static final SON:Ljava/lang/String; = "son"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TEMPORARY:Ljava/lang/String; = "temporary"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "resource"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "category"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "path"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "keywords"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "summary"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "is_checkbox"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "intent"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/internal/search/Function;->FUNCTIONS:[Ljava/lang/String;

    return-void
.end method
