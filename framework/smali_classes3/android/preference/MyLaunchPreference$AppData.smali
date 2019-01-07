.class public Landroid/preference/MyLaunchPreference$AppData;
.super Ljava/lang/Object;
.source "MyLaunchPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/MyLaunchPreference$AppData;)I
    .registers 4

    iget-object v1, p0, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/MyLaunchPreference$AppData;

    invoke-virtual {p0, p1}, Landroid/preference/MyLaunchPreference$AppData;->compareTo(Landroid/preference/MyLaunchPreference$AppData;)I

    move-result v0

    return v0
.end method
