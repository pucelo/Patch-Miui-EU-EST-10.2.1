.class public Landroid/os/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# static fields
.field public static final SYSTEM:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(I)Landroid/os/UserHandle;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_0
.end method
