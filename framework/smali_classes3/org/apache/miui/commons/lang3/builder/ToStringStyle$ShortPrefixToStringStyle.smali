.class final Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortPrefixToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseIdentityHashCode(Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
