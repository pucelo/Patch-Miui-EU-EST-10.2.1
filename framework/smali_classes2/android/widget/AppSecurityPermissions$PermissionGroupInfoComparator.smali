.class Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .registers 6

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    check-cast p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I

    move-result v0

    return v0
.end method
